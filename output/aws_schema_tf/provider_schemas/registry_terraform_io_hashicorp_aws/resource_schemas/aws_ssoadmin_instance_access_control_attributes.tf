resource "aws_ssoadmin_instance_access_control_attributes" "name" {
  instance_arn = string (Required)
  id = string (Optional, Computed)
  region = string (Optional, Computed)
  status = string (Computed)
  status_reason = string (Computed)

  attribute block "set" (Required) {
    key = string (Required)

    value block "set" (Required) {
      source = ['set', 'string'] (Required)
    }
  }
}
