resource "aws_servicecatalog_provisioned_product" "name" {
  name = string (Required)
  accept_language = string (Optional)
  arn = string (Computed)
  cloudwatch_dashboard_names = ['set', 'string'] (Computed)
  created_time = string (Computed)
  id = string (Optional, Computed)
  ignore_errors = bool (Optional)
  last_provisioning_record_id = string (Computed)
  last_record_id = string (Computed)
  last_successful_provisioning_record_id = string (Computed)
  launch_role_arn = string (Computed)
  notification_arns = ['list', 'string'] (Optional)
  outputs = ['set', ['object', {'description': 'string', 'key': 'string', 'value': 'string'}]] (Computed)
  path_id = string (Optional, Computed)
  path_name = string (Optional)
  product_id = string (Optional, Computed)
  product_name = string (Optional)
  provisioning_artifact_id = string (Optional, Computed)
  provisioning_artifact_name = string (Optional)
  region = string (Optional, Computed)
  retain_physical_resources = bool (Optional)
  status = string (Computed)
  status_message = string (Computed)
  tags = ['map', 'string'] (Optional)
  tags_all = ['map', 'string'] (Optional, Computed)
  type = string (Computed)

  provisioning_parameters block "list" (Optional) {
    key = string (Required)
    use_previous_value = bool (Optional)
    value = string (Optional)
  }

  stack_set_provisioning_preferences block "list" (Optional) {
    accounts = ['list', 'string'] (Optional)
    failure_tolerance_count = number (Optional)
    failure_tolerance_percentage = number (Optional)
    max_concurrency_count = number (Optional)
    max_concurrency_percentage = number (Optional)
    regions = ['list', 'string'] (Optional)
  }

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    read = string (Optional)
    update = string (Optional)
  }
}
