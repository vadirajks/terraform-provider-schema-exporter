resource "aws_appconfig_extension_association" "name" {
  extension_arn = string (Required)
  resource_arn = string (Required)
  arn = string (Computed)
  extension_version = number (Computed)
  id = string (Optional, Computed)
  parameters = ['map', 'string'] (Optional)
  region = string (Optional, Computed)
}
