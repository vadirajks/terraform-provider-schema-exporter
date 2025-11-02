resource "aws_iot_role_alias" "name" {
  alias = string (Required)
  role_arn = string (Required)
  arn = string (Computed)
  credential_duration = number (Optional)
  id = string (Optional, Computed)
  region = string (Optional, Computed)
  tags = ['map', 'string'] (Optional)
  tags_all = ['map', 'string'] (Optional, Computed)
}
