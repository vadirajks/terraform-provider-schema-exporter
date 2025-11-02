resource "aws_efs_backup_policy" "name" {
  file_system_id = string (Required)
  id = string (Optional, Computed)
  region = string (Optional, Computed)

  backup_policy block "list" (Required) {
    status = string (Required)
  }
}
