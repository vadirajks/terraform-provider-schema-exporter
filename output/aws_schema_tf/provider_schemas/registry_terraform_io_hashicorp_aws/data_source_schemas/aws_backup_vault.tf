data "aws_backup_vault" "name" {
  name = string (Required)
  arn = string (Computed)
  id = string (Optional, Computed)
  kms_key_arn = string (Computed)
  recovery_points = number (Computed)
  region = string (Optional, Computed)
  tags = ['map', 'string'] (Optional, Computed)
}
