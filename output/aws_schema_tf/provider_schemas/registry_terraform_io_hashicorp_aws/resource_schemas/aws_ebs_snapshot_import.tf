resource "aws_ebs_snapshot_import" "name" {
  arn = string (Computed)
  data_encryption_key_id = string (Computed)
  description = string (Optional, Computed)
  encrypted = bool (Optional)
  id = string (Optional, Computed)
  kms_key_id = string (Optional)
  outpost_arn = string (Computed)
  owner_alias = string (Computed)
  owner_id = string (Computed)
  permanent_restore = bool (Optional)
  region = string (Optional, Computed)
  role_name = string (Optional)
  storage_tier = string (Optional, Computed)
  tags = ['map', 'string'] (Optional)
  tags_all = ['map', 'string'] (Optional, Computed)
  temporary_restore_days = number (Optional)
  volume_id = string (Computed)
  volume_size = number (Computed)

  client_data block "list" (Optional) {
    comment = string (Optional)
    upload_end = string (Optional, Computed)
    upload_size = number (Optional, Computed)
    upload_start = string (Optional, Computed)
  }

  disk_container block "list" (Required) {
    format = string (Required)
    description = string (Optional)
    url = string (Optional)

    user_bucket block "list" (Optional) {
      s3_bucket = string (Required)
      s3_key = string (Required)
    }
  }

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
  }
}
