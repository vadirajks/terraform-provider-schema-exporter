resource "aws_iot_thing_group_membership" "name" {
  thing_group_name = string (Required)
  thing_name = string (Required)
  id = string (Optional, Computed)
  override_dynamic_group = bool (Optional)
  region = string (Optional, Computed)
}
