data "aws_ebs_snapshot" "name" {
  arn = string (Computed)
  data_encryption_key_id = string (Computed)
  description = string (Computed)
  encrypted = bool (Computed)
  id = string (Optional, Computed)
  kms_key_id = string (Computed)
  most_recent = bool (Optional)
  outpost_arn = string (Computed)
  owner_alias = string (Computed)
  owner_id = string (Computed)
  owners = ['list', 'string'] (Optional)
  region = string (Optional, Computed)
  restorable_by_user_ids = ['list', 'string'] (Optional)
  snapshot_id = string (Computed)
  snapshot_ids = ['list', 'string'] (Optional)
  start_time = string (Computed)
  state = string (Computed)
  storage_tier = string (Computed)
  tags = ['map', 'string'] (Optional, Computed)
  volume_id = string (Computed)
  volume_size = number (Computed)

  filter block "set" (Optional) {
    name = string (Required)
    values = ['set', 'string'] (Required)
  }

  timeouts block "single" (Optional) {
    read = string (Optional)
  }
}
