resource "aws_cloudformation_stack" "name" {
  name = string (Required)
  capabilities = ['set', 'string'] (Optional)
  disable_rollback = bool (Optional)
  iam_role_arn = string (Optional)
  id = string (Optional, Computed)
  notification_arns = ['set', 'string'] (Optional)
  on_failure = string (Optional)
  outputs = ['map', 'string'] (Computed)
  parameters = ['map', 'string'] (Optional, Computed)
  policy_body = string (Optional, Computed)
  policy_url = string (Optional)
  region = string (Optional, Computed)
  tags = ['map', 'string'] (Optional)
  tags_all = ['map', 'string'] (Optional, Computed)
  template_body = string (Optional, Computed)
  template_url = string (Optional)
  timeout_in_minutes = number (Optional)

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    update = string (Optional)
  }
}
