resource "aws_controltower_control" "name" {
  control_identifier = string (Required)
  target_identifier = string (Required)
  arn = string (Computed)
  id = string (Optional, Computed)
  region = string (Optional, Computed)

  parameters block "set" (Optional) {
    key = string (Required)
    value = string (Required)
  }

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    update = string (Optional)
  }
}
