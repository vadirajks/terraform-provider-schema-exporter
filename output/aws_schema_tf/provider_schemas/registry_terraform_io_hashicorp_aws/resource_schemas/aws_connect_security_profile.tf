resource "aws_connect_security_profile" "name" {
  instance_id = string (Required)
  name = string (Required)
  arn = string (Computed)
  description = string (Optional)
  id = string (Optional, Computed)
  organization_resource_id = string (Computed)
  permissions = ['set', 'string'] (Optional)
  region = string (Optional, Computed)
  security_profile_id = string (Computed)
  tags = ['map', 'string'] (Optional)
  tags_all = ['map', 'string'] (Optional, Computed)
}
