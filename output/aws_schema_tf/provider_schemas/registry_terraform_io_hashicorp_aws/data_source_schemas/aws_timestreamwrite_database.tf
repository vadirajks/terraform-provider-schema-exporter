data "aws_timestreamwrite_database" "name" {
  name = string (Required)
  arn = string (Computed)
  created_time = string (Computed)
  kms_key_id = string (Computed)
  last_updated_time = string (Computed)
  region = string (Optional, Computed)
  table_count = number (Computed)
}
