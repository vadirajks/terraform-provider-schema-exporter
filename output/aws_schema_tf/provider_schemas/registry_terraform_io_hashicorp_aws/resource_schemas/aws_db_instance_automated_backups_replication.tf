resource "aws_db_instance_automated_backups_replication" "name" {
  source_db_instance_arn = string (Required)
  id = string (Optional, Computed)
  kms_key_id = string (Optional, Computed)
  pre_signed_url = string (Optional)
  region = string (Optional, Computed)
  retention_period = number (Optional)

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
  }
}
