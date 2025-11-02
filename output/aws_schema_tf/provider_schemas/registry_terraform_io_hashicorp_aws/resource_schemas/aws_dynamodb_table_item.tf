resource "aws_dynamodb_table_item" "name" {
  hash_key = string (Required)
  item = string (Required)
  table_name = string (Required)
  id = string (Optional, Computed)
  range_key = string (Optional)
  region = string (Optional, Computed)
}
