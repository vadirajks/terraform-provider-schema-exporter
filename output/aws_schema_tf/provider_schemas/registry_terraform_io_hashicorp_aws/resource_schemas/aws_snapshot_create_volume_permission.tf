resource "aws_snapshot_create_volume_permission" "name" {
  account_id = string (Required)
  snapshot_id = string (Required)
  id = string (Optional, Computed)
  region = string (Optional, Computed)

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
  }
}
