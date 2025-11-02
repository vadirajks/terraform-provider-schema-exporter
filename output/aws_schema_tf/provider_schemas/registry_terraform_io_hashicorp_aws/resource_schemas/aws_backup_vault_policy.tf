resource "aws_backup_vault_policy" "name" {
  backup_vault_name = string (Required)
  policy = string (Required)
  backup_vault_arn = string (Computed)
  id = string (Optional, Computed)
  region = string (Optional, Computed)
}
