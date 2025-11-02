resource "aws_licensemanager_grant_accepter" "name" {
  grant_arn = string (Required)
  allowed_operations = ['set', 'string'] (Computed)
  home_region = string (Computed)
  id = string (Optional, Computed)
  license_arn = string (Computed)
  name = string (Computed)
  parent_arn = string (Computed)
  principal = string (Computed)
  region = string (Optional, Computed)
  status = string (Computed)
  version = string (Computed)
}
