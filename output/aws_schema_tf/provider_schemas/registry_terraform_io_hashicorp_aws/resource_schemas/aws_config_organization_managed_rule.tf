resource "aws_config_organization_managed_rule" "name" {
  name = string (Required)
  rule_identifier = string (Required)
  arn = string (Computed)
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
