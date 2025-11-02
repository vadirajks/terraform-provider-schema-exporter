#!/bin/bash
PROVIDER_NAME="aws"
BASE_DIR="./output"
SCHEMA_JSON="schema.json"

python3 extract_schema_tf.py --provider "$PROVIDER_NAME" --schema-json "$SCHEMA_JSON" --base-dir "$BASE_DIR"
python3 extract_schema_yaml.py --provider "$PROVIDER_NAME" --schema-json "$SCHEMA_JSON" --base-dir "$BASE_DIR"
python3 extract_schema_json.py --provider "$PROVIDER_NAME" --schema-json "$SCHEMA_JSON" --base-dir "$BASE_DIR"