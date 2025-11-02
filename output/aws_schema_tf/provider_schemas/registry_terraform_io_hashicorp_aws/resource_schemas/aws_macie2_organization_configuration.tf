resource "aws_macie2_organization_configuration" "name" {
  auto_enable = bool (Required)
  region = string (Optional, Computed)
}
