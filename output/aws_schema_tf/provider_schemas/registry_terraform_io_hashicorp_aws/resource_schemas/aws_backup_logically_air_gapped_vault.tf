resource "aws_backup_logically_air_gapped_vault" "name" {
  max_retention_days = number (Required)
  min_retention_days = number (Required)
  name = string (Required)
  arn = string (Computed)
  id = string (Computed)
  region = string (Optional, Computed)
  tags = ['map', 'string'] (Optional)
  tags_all = ['map', 'string'] (Computed)

  timeouts block "single" (Optional) {
    create = string (Optional)
  }
}
