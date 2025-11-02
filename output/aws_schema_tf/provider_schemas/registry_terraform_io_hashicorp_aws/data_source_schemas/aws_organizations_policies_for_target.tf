data "aws_organizations_policies_for_target" "name" {
  filter = string (Required)
  target_id = string (Required)
  id = string (Optional, Computed)
  ids = ['list', 'string'] (Computed)
}
