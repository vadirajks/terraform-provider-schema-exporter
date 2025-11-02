resource "aws_rds_instance_state" "name" {
  identifier = string (Required)
  state = string (Required)
  region = string (Optional, Computed)

  timeouts block "single" (Optional) {
    create = string (Optional)
    update = string (Optional)
  }
}
