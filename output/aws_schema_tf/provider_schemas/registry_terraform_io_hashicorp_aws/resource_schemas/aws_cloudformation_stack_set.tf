resource "aws_cloudformation_stack_set" "name" {
  name = string (Required)
  administration_role_arn = string (Optional)
  arn = string (Computed)
  call_as = string (Optional)
  capabilities = ['set', 'string'] (Optional)
  description = string (Optional)
  execution_role_name = string (Optional, Computed)
  id = string (Optional, Computed)
  parameters = ['map', 'string'] (Optional)
  permission_model = string (Optional)
  region = string (Optional, Computed)
  stack_set_id = string (Computed)
  tags = ['map', 'string'] (Optional)
  tags_all = ['map', 'string'] (Optional, Computed)
  template_body = string (Optional, Computed)
  template_url = string (Optional)

  auto_deployment block "list" (Optional) {
    enabled = bool (Optional)
    retain_stacks_on_account_removal = bool (Optional)
  }

  managed_execution block "list" (Optional) {
    active = bool (Optional)
  }

  operation_preferences block "list" (Optional) {
    failure_tolerance_count = number (Optional)
    failure_tolerance_percentage = number (Optional)
    max_concurrent_count = number (Optional)
    max_concurrent_percentage = number (Optional)
    region_concurrency_type = string (Optional)
    region_order = ['list', 'string'] (Optional)
  }

  timeouts block "single" (Optional) {
    update = string (Optional)
  }
}
