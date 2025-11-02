resource "aws_config_organization_custom_policy_rule" "name" {
  name = string (Required)
  policy_runtime = string (Required)
  policy_text = string (Required)
  trigger_types = ['set', 'string'] (Required)
  arn = string (Computed)
  debug_log_delivery_accounts = ['set', 'string'] (Optional)
  description = string (Optional)
  excluded_accounts = ['set', 'string'] (Optional)
  id = string (Optional, Computed)
  input_parameters = string (Optional)
  maximum_execution_frequency = string (Optional)
  region = string (Optional, Computed)
  resource_id_scope = string (Optional)
  resource_types_scope = ['set', 'string'] (Optional)
  tag_key_scope = string (Optional)
  tag_value_scope = string (Optional)

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    update = string (Optional)
  }
}
