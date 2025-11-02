python3 extract_schema_tf.py \
  --provider google \
  --schema-json schema.json \
  --base-dir ./output

python3 extract_schema_tf.py \
  --provider aws \
  --schema-json schema.json \
  --base-dir ./output

python3 extract_schema_tf.py \
  --provider azurerm \
  --schema-json schema.json \
  --base-dir ./output
