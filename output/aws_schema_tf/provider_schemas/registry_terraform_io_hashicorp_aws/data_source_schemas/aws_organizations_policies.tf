data "aws_organizations_policies" "name" {
  filter = string (Required)
  id = string (Optional, Computed)
  ids = ['list', 'string'] (Computed)
}
