resource "aws_codecommit_approval_rule_template_association" "name" {
  approval_rule_template_name = string (Required)
  repository_name = string (Required)
  id = string (Optional, Computed)
  region = string (Optional, Computed)
}
