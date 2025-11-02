resource "aws_emr_block_public_access_configuration" "name" {
  block_public_security_group_rules = bool (Required)
  id = string (Optional, Computed)
  region = string (Optional, Computed)

  permitted_public_security_group_rule_range block "list" (Optional) {
    max_range = number (Required)
    min_range = number (Required)
  }
}
