resource "aws_cloudfrontkeyvaluestore_keys_exclusive" "name" {
  key_value_store_arn = string (Required)
  max_batch_size = number (Optional, Computed)
  total_size_in_bytes = number (Computed)

  resource_key_value_pair block "set" (Optional) {
    key = string (Required)
    value = string (Required)
  }
}
