resource "aws_sfn_activity" "name" {
  name = string (Required)
  arn = string (Computed)
  creation_date = string (Computed)
  id = string (Optional, Computed)
  region = string (Optional, Computed)
  tags = ['map', 'string'] (Optional)
  tags_all = ['map', 'string'] (Optional, Computed)

  encryption_configuration block "list" (Optional) {
    kms_data_key_reuse_period_seconds = number (Optional)
    kms_key_id = string (Optional)
    type = string (Optional)
  }
}
