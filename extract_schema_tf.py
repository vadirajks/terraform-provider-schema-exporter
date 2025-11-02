#!/usr/bin/env python3
import json
import os
import argparse
import re

# --- Helper function to format a schema block ---

def format_block_content(schema_block, indent_level):
    """
    Recursively formats the attributes and nested blocks of a schema.
    """
    indent = "  " * indent_level
    lines = []

    # Process plain attributes
    attributes = schema_block.get("attributes", {})
    
    # --- MODIFIED: Sort attributes to show Required first ---
    required_lines = []
    other_lines = []
    
    if attributes:
        for name, details in attributes.items():
            # Determine type
            arg_type = details.get("type", "any")

            # Determine status (Required, Optional, Computed)
            status = []
            is_required = details.get("required", False)
            
            if is_required:
                status.append("Required")
            if details.get("optional"):
                status.append("Optional")
            if details.get("computed"):
                status.append("Computed")
            status_str = ", ".join(status)

            line = f"{indent}{name} = {arg_type} ({status_str})"
            
            if is_required:
                required_lines.append(line)
            else:
                other_lines.append(line)

    # Add required lines first, then all other lines
    lines.extend(required_lines)
    lines.extend(other_lines)
    # --- END MODIFICATION ---


    # Process nested block types
    block_types = schema_block.get("block_types", {})
    if block_types:
        for name, details in block_types.items():
            nesting = details.get("nesting_mode", "single")
            
            # --- MODIFIED: Add (Required) / (Optional) status to blocks ---
            block_status = []
            min_items = details.get("min_items")
            if min_items is not None and min_items > 0:
                block_status.append("Required")
            else:
                block_status.append("Optional")
            
            block_status_str = f" ({', '.join(block_status)})"
            # --- END MODIFICATION ---

            lines.append(f"\n{indent}{name} block \"{nesting}\"{block_status_str} {{")
            
            # Recurse for the nested block's content
            nested_block_schema = details.get("block", {})
            lines.extend(format_block_content(nested_block_schema, indent_level + 1))
            
            lines.append(f"{indent}}}")
    
    return lines

# --- End of helper function ---

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

# --- MODIFIED ---
# Get the provider's short name (e.g., "google") from the key
provider_name_match = re.search(r"/([\w-]+)$", provider_key)
provider_name = provider_name_match.group(1) if provider_name_match else args.provider
# --- END MODIFIED ---

provider_schema = schema["provider_schemas"][provider_key]
base_folder = os.path.join(args.base_dir, f"{args.provider}_schema_tf", "provider_schemas", sanitize(provider_key))
os.makedirs(base_folder, exist_ok=True)

# Write .tf files for all nested schemas
print(f"✅ Generating .tf schema files for: {args.provider}")
generated_files = 0

for section, content in provider_schema.items():
    section_folder = os.path.join(base_folder, section)
    os.makedirs(section_folder, exist_ok=True)

    # --- MODIFIED: Special handling for the 'provider' section ---
    if section == "provider":
        # 'content' is the provider schema block itself.
        header = f'provider "{provider_name}" {{'
        
        if not isinstance(content, dict):
            print(f"⚠️  Skipping provider section: schema is not a dictionary (found {type(content)}).")
            continue

        schema_block = content.get("block", {})
        tf_lines = format_block_content(schema_block, indent_level=1)
        
        # Use the provider_name for the filename
        item_file = os.path.join(section_folder, f"{sanitize(provider_name)}.tf")
        try:
            with open(item_file, "w") as f:
                f.write(header + "\n")
                f.write("\n".join(tf_lines) + "\n")
                f.write("}\n")
            generated_files += 1
        except Exception as e:
            print(f"❌ Error writing provider file {item_file}: {e}")

    # --- MODIFIED LOGIC for other sections (resource_schemas, data_source_schemas, etc.) ---
    elif isinstance(content, dict):
        for item, value in content.items():
            
            # Determine the top-level Terraform block header
            header = ""
            # --- MODIFIED: Removed 'else: continue' to catch all ---
            if section == "resource_schemas":
                header = f'resource "{item}" "name" {{'
            elif section == "resource_identity_schemas":
                header = f'resource "{item}" "name" {{ // Resource Identity'
            elif section == "ephemeral_resource_schemas":
                header = f'resource "{item}" "name" {{ // Ephemeral Resource'
            elif section == "data_source_schemas":
                header = f'data "{item}" "name" {{'
            elif section == "functions":
                header = f'data "{item}" "name" {{ // Function'
            # --- CATCH-ALL LOGIC ---
            elif "resource" in section:
                print(f"ℹ️  Found unknown resource section '{section}'. Processing as resource.")
                header = f'resource "{item}" "name" {{ // Unknown Resource Type: {section}'
            elif "data" in section or "function" in section:
                print(f"ℹ️  Found unknown data section '{section}'. Processing as data.")
                header = f'data "{item}" "name" {{ // Unknown Data Type: {section}'
            # --- FINAL MODIFICATION: Replaced 'continue' with a default ---
            else:
                print(f"⚠️  Found unknown section '{section}'. Defaulting to 'resource' format.")
                header = f'resource "{item}" "name" {{ // Unknown Section Type: {section}'
            # --- END MODIFICATION ---
            
            # --- Check from previous step (still valid) ---
            # Ensure 'value' is a dictionary before trying to access .get()
            if not isinstance(value, dict):
                print(f"⚠️  Skipping item '{item}' in section '{section}': value is not a dictionary (found {type(value)}).")
                continue
            # --- END CHECK ---

            # Get the main block content
            schema_block = value.get("block", {})
            tf_lines = format_block_content(schema_block, indent_level=1)
            
            # Define the new .tf file path
            item_file = os.path.join(section_folder, f"{sanitize(item)}.tf")
            
            # Write the formatted .tf file
            try:
                with open(item_file, "w") as f:
                    f.write(header + "\n")
                    f.write("\n".join(tf_lines) + "\n")
                    f.write("}\n")
                generated_files += 1
            except Exception as e:
                print(f"❌ Error writing file {item_file}: {e}")

print(f"✅ Completed Terraform schema export.")
print(f"📄 Generated {generated_files} .tf files.")
print(f"📁 Output → {base_folder}")
