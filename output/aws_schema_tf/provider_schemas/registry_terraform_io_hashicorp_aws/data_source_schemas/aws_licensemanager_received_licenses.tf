data "aws_licensemanager_received_licenses" "name" {
  arns = ['list', 'string'] (Computed)
  id = string (Optional, Computed)
  region = string (Optional, Computed)

  filter block "set" (Optional) {
    name = string (Required)
    values = ['set', 'string'] (Required)
  }
}
