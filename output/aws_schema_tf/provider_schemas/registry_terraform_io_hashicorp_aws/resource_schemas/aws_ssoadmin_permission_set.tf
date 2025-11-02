resource "aws_ssoadmin_permission_set" "name" {
  instance_arn = string (Required)
  name = string (Required)
  arn = string (Computed)
  created_date = string (Computed)
  description = string (Optional)
  id = string (Optional, Computed)
  region = string (Optional, Computed)
  relay_state = string (Optional)
  session_duration = string (Optional)
  tags = ['map', 'string'] (Optional)
  tags_all = ['map', 'string'] (Optional, Computed)

  timeouts block "single" (Optional) {
    update = string (Optional)
  }
}
