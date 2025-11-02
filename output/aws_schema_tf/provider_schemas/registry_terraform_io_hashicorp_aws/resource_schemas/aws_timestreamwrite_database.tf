resource "aws_timestreamwrite_database" "name" {
  database_name = string (Required)
  arn = string (Computed)
  id = string (Optional, Computed)
  kms_key_id = string (Optional, Computed)
  region = string (Optional, Computed)
  table_count = number (Computed)
  tags = ['map', 'string'] (Optional)
  tags_all = ['map', 'string'] (Optional, Computed)
}
