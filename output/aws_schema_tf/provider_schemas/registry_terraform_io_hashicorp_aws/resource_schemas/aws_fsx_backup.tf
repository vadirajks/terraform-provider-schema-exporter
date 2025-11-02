resource "aws_fsx_backup" "name" {
  arn = string (Computed)
  file_system_id = string (Optional)
  id = string (Optional, Computed)
  kms_key_id = string (Computed)
  owner_id = string (Computed)
  region = string (Optional, Computed)
  tags = ['map', 'string'] (Optional)
  tags_all = ['map', 'string'] (Optional, Computed)
  type = string (Computed)
  volume_id = string (Optional)

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
  }
}
