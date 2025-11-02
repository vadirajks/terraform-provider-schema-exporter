resource "aws_backup_vault_lock_configuration" "name" {
  backup_vault_name = string (Required)
  backup_vault_arn = string (Computed)
  changeable_for_days = number (Optional)
  id = string (Optional, Computed)
  max_retention_days = number (Optional)
  min_retention_days = number (Optional)
  region = string (Optional, Computed)
}
