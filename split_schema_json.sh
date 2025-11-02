python3 extract_schema_json.py \
  --provider google \
  --schema-json schema.json \
  --base-dir ./output

python3 extract_schema_json.py \
  --provider aws \
  --schema-json schema.json \
  --base-dir ./output

python3 extract_schema_json.py \
  --provider azurerm \
  --schema-json schema.json \
  --base-dir ./output
