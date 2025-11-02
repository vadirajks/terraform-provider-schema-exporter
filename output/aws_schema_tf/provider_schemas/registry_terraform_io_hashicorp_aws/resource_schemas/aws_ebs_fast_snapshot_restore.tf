resource "aws_ebs_fast_snapshot_restore" "name" {
  availability_zone = string (Required)
  snapshot_id = string (Required)
  id = string (Computed)
  region = string (Optional, Computed)
  state = string (Computed)

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
  }
}
