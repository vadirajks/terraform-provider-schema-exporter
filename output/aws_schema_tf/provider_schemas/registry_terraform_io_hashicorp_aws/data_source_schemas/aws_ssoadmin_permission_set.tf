data "aws_ssoadmin_permission_set" "name" {
  instance_arn = string (Required)
  arn = string (Optional, Computed)
  created_date = string (Computed)
  description = string (Computed)
  id = string (Optional, Computed)
  name = string (Optional, Computed)
  region = string (Optional, Computed)
  relay_state = string (Computed)
  session_duration = string (Computed)
  tags = ['map', 'string'] (Optional, Computed)
}
