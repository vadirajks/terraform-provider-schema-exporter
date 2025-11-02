resource "aws_dynamodb_table_replica" "name" {
  global_table_arn = string (Required)
  arn = string (Computed)
  deletion_protection_enabled = bool (Optional, Computed)
  id = string (Optional, Computed)
  kms_key_arn = string (Optional, Computed)
  point_in_time_recovery = bool (Optional)
  region = string (Optional, Computed)
  table_class_override = string (Optional)
  tags = ['map', 'string'] (Optional)
  tags_all = ['map', 'string'] (Optional, Computed)

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    update = string (Optional)
  }
}
