data "aws_ebs_snapshot_ids" "name" {
  id = string (Optional, Computed)
  ids = ['list', 'string'] (Computed)
  owners = ['list', 'string'] (Optional)
  region = string (Optional, Computed)
  restorable_by_user_ids = ['list', 'string'] (Optional)

  filter block "set" (Optional) {
    name = string (Required)
    values = ['set', 'string'] (Required)
  }

  timeouts block "single" (Optional) {
    read = string (Optional)
  }
}
