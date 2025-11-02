#!/usr/bin/env python3
import json
import os
import argparse
import re

# --- Helper function to clean description strings ---
def process_string(s):
    """Collapses a multi-line string into a single line."""
    if not isinstance(s, str):
        return s
    
    # Split by newlines, strip whitespace from each line
    lines = [line.strip() for line in s.splitlines()]
    
    # Filter out any lines that became empty
    cleaned_lines = [line for line in lines if line]
    
    # Join the rest with a single space
    return ' '.join(cleaned_lines)

def traverse_and_clean(node):
    """Recursively finds 'description' keys and cleans their values."""
    if isinstance(node, dict):
        for key, value in node.items():
            if key == 'description' and isinstance(value, str):
                node[key] = process_string(value)
            else:
                traverse_and_clean(value)
    elif isinstance(node, list):
        for item in node:
            traverse_and_clean(item)
# --- End of helper functions ---

def sanitize(name):
    return name.replace(".", "_").replace("/", "_")

parser = argparse.ArgumentParser()
parser.add_argument("--schema-json", required=True)
parser.add_argument("--provider", required=True)
parser.add_argument("--base-dir", required=True)
args = parser.parse_args()

# Load base schema JSON
with open(args.schema_json, "r") as f:
    schema = json.load(f)

provider_key = None
for key in schema.get("provider_schemas", {}):
    if args.provider in key:
        provider_key = key
        break

if not provider_key:
    print(f"❌ Provider '{args.provider}' not found in JSON")
    exit(1)

provider_schema = schema["provider_schemas"][provider_key]
base_folder = os.path.join(args.base_dir, f"{args.provider}_schema_json", "provider_schemas", sanitize(provider_key))
os.makedirs(base_folder, exist_ok=True)

# Process each schema section
for section, content in provider_schema.items():
    section_folder = os.path.join(base_folder, section)
    os.makedirs(section_folder, exist_ok=True)

    if isinstance(content, dict):
        for item, value in content.items():
            item_file = os.path.join(section_folder, f"{sanitize(item)}.json")
            
            # --- ADDED: Clean the description fields recursively ---
            traverse_and_clean(value)
            # --- END ---
            
            with open(item_file, "w") as f:
                json.dump(value, f, indent=2)

print(f"✅ Completed provider extraction for {args.provider}")
print(f"📁 Output → {base_folder}")
