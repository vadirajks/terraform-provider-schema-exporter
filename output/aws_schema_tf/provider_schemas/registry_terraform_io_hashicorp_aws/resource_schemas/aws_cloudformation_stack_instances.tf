resource "aws_cloudformation_stack_instances" "name" {
  stack_set_name = string (Required)
  accounts = ['set', 'string'] (Optional, Computed)
  call_as = string (Optional)
  id = string (Optional, Computed)
  parameter_overrides = ['map', 'string'] (Optional)
  region = string (Optional, Computed)
  regions = ['set', 'string'] (Optional, Computed)
  retain_stacks = bool (Optional)
  stack_instance_summaries = ['list', ['object', {'account_id': 'string', 'detailed_status': 'string', 'drift_status': 'string', 'organizational_unit_id': 'string', 'region': 'string', 'stack_id': 'string', 'stack_set_id': 'string', 'status': 'string', 'status_reason': 'string'}]] (Computed)
  stack_set_id = string (Computed)

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
