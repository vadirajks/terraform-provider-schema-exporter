resource "aws_backup_vault_notifications" "name" {
  backup_vault_events = ['set', 'string'] (Required)
  backup_vault_name = string (Required)
  sns_topic_arn = string (Required)
  backup_vault_arn = string (Computed)
  id = string (Optional, Computed)
  region = string (Optional, Computed)
}
