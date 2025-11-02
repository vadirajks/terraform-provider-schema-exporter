resource "aws_cloudformation_stack_set_instance" "name" {
  stack_set_name = string (Required)
  account_id = string (Optional, Computed)
  call_as = string (Optional)
  id = string (Optional, Computed)
  organizational_unit_id = string (Computed)
  parameter_overrides = ['map', 'string'] (Optional)
  region = string (Optional, Computed)
  retain_stack = bool (Optional)
  stack_id = string (Computed)
  stack_instance_summaries = ['list', ['object', {'account_id': 'string', 'organizational_unit_id': 'string', 'stack_id': 'string'}]] (Computed)
  stack_set_instance_region = string (Optional, Computed)

  deployment_targets block "list" (Optional) {
    account_filter_type = string (Optional)
    accounts = ['set', 'string'] (Optional)
    accounts_url = string (Optional)
    organizational_unit_ids = ['set', 'string'] (Optional)
  }

  operation_preferences block "list" (Optional) {
    concurrency_mode = string (Optional)
    failure_tolerance_count = number (Optional)
    failure_tolerance_percentage = number (Optional)
    max_concurrent_count = number (Optional)
    max_concurrent_percentage = number (Optional)
    region_concurrency_type = string (Optional)
    region_order = ['list', 'string'] (Optional)
  }

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    update = string (Optional)
  }
}
