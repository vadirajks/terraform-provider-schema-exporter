resource "aws_guardduty_organization_configuration_feature" "name" {
  auto_enable = string (Required)
  detector_id = string (Required)
  name = string (Required)
  id = string (Optional, Computed)
  region = string (Optional, Computed)

  additional_configuration block "list" (Optional) {
    auto_enable = string (Required)
    name = string (Required)
  }
}
