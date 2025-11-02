resource "aws_cloudfrontkeyvaluestore_key" "name" {
  key = string (Required)
  key_value_store_arn = string (Required)
  value = string (Required)
  id = string (Computed)
  total_size_in_bytes = number (Computed)
}
