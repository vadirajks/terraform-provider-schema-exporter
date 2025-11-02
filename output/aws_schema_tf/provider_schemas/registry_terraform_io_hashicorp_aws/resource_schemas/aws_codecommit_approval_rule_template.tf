resource "aws_codecommit_approval_rule_template" "name" {
  content = string (Required)
  name = string (Required)
  approval_rule_template_id = string (Computed)
  creation_date = string (Computed)
  description = string (Optional)
  id = string (Optional, Computed)
  last_modified_date = string (Computed)
  last_modified_user = string (Computed)
  region = string (Optional, Computed)
  rule_content_sha256 = string (Computed)
}
