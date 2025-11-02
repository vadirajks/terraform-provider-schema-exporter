resource "aws_backup_vault" "name" {
  name = string (Required)
  arn = string (Computed)
  force_destroy = bool (Optional)
  id = string (Optional, Computed)
  kms_key_arn = string (Optional, Computed)
  recovery_points = number (Computed)
  region = string (Optional, Computed)
  tags = ['map', 'string'] (Optional)
  tags_all = ['map', 'string'] (Optional, Computed)

  timeouts block "single" (Optional) {
    delete = string (Optional)
  }
}
