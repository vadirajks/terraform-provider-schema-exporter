data "aws_inspector_rules_packages" "name" {
  arns = ['list', 'string'] (Computed)
  id = string (Optional, Computed)
  region = string (Optional, Computed)
}
