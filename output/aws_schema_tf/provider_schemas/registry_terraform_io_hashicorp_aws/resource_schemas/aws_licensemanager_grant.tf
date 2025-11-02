resource "aws_licensemanager_grant" "name" {
  allowed_operations = ['set', 'string'] (Required)
  license_arn = string (Required)
  name = string (Required)
  principal = string (Required)
  arn = string (Computed)
  home_region = string (Computed)
  id = string (Optional, Computed)
  parent_arn = string (Computed)
  region = string (Optional, Computed)
  status = string (Computed)
  version = string (Computed)
}
