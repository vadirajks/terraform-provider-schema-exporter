resource "aws_licensemanager_association" "name" {
  license_configuration_arn = string (Required)
  resource_arn = string (Required)
  id = string (Optional, Computed)
  region = string (Optional, Computed)
}
