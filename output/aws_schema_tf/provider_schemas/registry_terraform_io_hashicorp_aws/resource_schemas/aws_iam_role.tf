resource "aws_iam_role" "name" {
  assume_role_policy = string (Required)
  arn = string (Computed)
  create_date = string (Computed)
  description = string (Optional)
  force_detach_policies = bool (Optional)
  id = string (Optional, Computed)
  managed_policy_arns = ['set', 'string'] (Optional, Computed)
  max_session_duration = number (Optional)
  name = string (Optional, Computed)
  name_prefix = string (Optional, Computed)
  path = string (Optional)
  permissions_boundary = string (Optional)
  tags = ['map', 'string'] (Optional)
  tags_all = ['map', 'string'] (Optional, Computed)
  unique_id = string (Computed)

  inline_policy block "set" (Optional) {
    name = string (Optional)
    policy = string (Optional)
  }
}
