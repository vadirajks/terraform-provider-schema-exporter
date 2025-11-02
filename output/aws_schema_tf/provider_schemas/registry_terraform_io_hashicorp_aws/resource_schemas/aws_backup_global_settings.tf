resource "aws_backup_global_settings" "name" {
  global_settings = ['map', 'string'] (Required)
  id = string (Optional, Computed)
}
