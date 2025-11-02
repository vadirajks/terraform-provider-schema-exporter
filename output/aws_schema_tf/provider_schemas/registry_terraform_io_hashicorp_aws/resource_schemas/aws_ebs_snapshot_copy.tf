resource "aws_ebs_snapshot_copy" "name" {
  source_region = string (Required)
  source_snapshot_id = string (Required)
  arn = string (Computed)
  completion_duration_minutes = number (Optional)
  data_encryption_key_id = string (Computed)
  description = string (Optional)
  encrypted = bool (Optional)
  id = string (Optional, Computed)
  kms_key_id = string (Optional)
  outpost_arn = string (Computed)
  owner_alias = string (Computed)
  owner_id = string (Computed)
  permanent_restore = bool (Optional)
  region = string (Optional, Computed)
  storage_tier = string (Optional, Computed)
  tags = ['map', 'string'] (Optional)
  tags_all = ['map', 'string'] (Optional, Computed)
  temporary_restore_days = number (Optional)
  volume_id = string (Computed)
  volume_size = number (Computed)

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
  }
}
