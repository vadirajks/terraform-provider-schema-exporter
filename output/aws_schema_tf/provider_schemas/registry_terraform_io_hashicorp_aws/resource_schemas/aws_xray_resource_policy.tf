resource "aws_xray_resource_policy" "name" {
  policy_document = string (Required)
  policy_name = string (Required)
  bypass_policy_lockout_check = bool (Optional)
  last_updated_time = string (Computed)
  policy_revision_id = string (Optional, Computed)
  region = string (Optional, Computed)
}
