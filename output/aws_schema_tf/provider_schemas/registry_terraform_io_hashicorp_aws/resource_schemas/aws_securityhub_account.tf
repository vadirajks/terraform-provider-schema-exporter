resource "aws_securityhub_account" "name" {
  arn = string (Computed)
  auto_enable_controls = bool (Optional)
  control_finding_generator = string (Optional, Computed)
  enable_default_standards = bool (Optional)
  id = string (Optional, Computed)
  region = string (Optional, Computed)
}
