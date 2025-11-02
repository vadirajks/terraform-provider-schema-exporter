resource "aws_securityhub_organization_configuration" "name" {
  auto_enable = bool (Required)
  auto_enable_standards = string (Optional, Computed)
  id = string (Optional, Computed)
  region = string (Optional, Computed)

  organization_configuration block "list" (Optional) {
    configuration_type = string (Required)
  }

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    update = string (Optional)
  }
}
