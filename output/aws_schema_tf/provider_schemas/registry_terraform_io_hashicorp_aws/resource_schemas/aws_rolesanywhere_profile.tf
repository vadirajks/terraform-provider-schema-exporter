resource "aws_rolesanywhere_profile" "name" {
  name = string (Required)
  arn = string (Computed)
  duration_seconds = number (Optional, Computed)
  enabled = bool (Optional)
  id = string (Optional, Computed)
  managed_policy_arns = ['set', 'string'] (Optional)
  require_instance_properties = bool (Optional)
  role_arns = ['set', 'string'] (Optional)
  session_policy = string (Optional)
  tags = ['map', 'string'] (Optional)
  tags_all = ['map', 'string'] (Optional, Computed)
}
