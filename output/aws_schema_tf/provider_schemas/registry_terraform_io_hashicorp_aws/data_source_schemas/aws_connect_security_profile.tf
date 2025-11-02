data "aws_connect_security_profile" "name" {
  instance_id = string (Required)
  arn = string (Computed)
  description = string (Computed)
  id = string (Optional, Computed)
  name = string (Optional, Computed)
  organization_resource_id = string (Computed)
  permissions = ['set', 'string'] (Computed)
  region = string (Optional, Computed)
  security_profile_id = string (Optional, Computed)
  tags = ['map', 'string'] (Optional, Computed)
}
