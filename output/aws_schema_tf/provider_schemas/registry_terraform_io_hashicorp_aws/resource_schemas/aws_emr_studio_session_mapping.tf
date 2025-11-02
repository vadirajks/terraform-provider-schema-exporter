resource "aws_emr_studio_session_mapping" "name" {
  identity_type = string (Required)
  session_policy_arn = string (Required)
  studio_id = string (Required)
  id = string (Optional, Computed)
  identity_id = string (Optional, Computed)
  identity_name = string (Optional, Computed)
  region = string (Optional, Computed)
}
