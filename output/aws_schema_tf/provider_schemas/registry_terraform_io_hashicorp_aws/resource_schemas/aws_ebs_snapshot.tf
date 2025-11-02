resource "aws_ebs_snapshot" "name" {
  volume_id = string (Required)
  arn = string (Computed)
  data_encryption_key_id = string (Computed)
  description = string (Optional)
  encrypted = bool (Computed)
  id = string (Optional, Computed)
  kms_key_id = string (Computed)
  outpost_arn = string (Optional)
  owner_alias = string (Computed)
  owner_id = string (Computed)
  permanent_restore = bool (Optional)
  region = string (Optional, Computed)
  storage_tier = string (Optional, Computed)
  tags = ['map', 'string'] (Optional)
  tags_all = ['map', 'string'] (Optional, Computed)
  temporary_restore_days = number (Optional)
  volume_size = number (Computed)

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
  }
}
