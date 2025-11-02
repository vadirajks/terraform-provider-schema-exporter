resource "aws_rds_integration" "name" {
  integration_name = string (Required)
  source_arn = string (Required)
  target_arn = string (Required)
  additional_encryption_context = ['map', 'string'] (Optional)
  arn = string (Computed)
  data_filter = string (Optional, Computed)
  id = string (Computed)
  kms_key_id = string (Optional, Computed)
  region = string (Optional, Computed)
  tags = ['map', 'string'] (Optional)
  tags_all = ['map', 'string'] (Computed)

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
  }
}
