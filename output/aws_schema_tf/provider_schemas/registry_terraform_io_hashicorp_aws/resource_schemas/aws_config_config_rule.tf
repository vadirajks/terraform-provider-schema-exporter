resource "aws_config_config_rule" "name" {
  name = string (Required)
  arn = string (Computed)
  description = string (Optional)
  id = string (Optional, Computed)
  input_parameters = string (Optional)
  maximum_execution_frequency = string (Optional)
  region = string (Optional, Computed)
  rule_id = string (Computed)
  tags = ['map', 'string'] (Optional)
  tags_all = ['map', 'string'] (Optional, Computed)

  evaluation_mode block "set" (Optional) {
    mode = string (Optional, Computed)
  }

  scope block "list" (Optional) {
    compliance_resource_id = string (Optional)
    compliance_resource_types = ['set', 'string'] (Optional)
    tag_key = string (Optional)
    tag_value = string (Optional)
  }

  source block "list" (Required) {
    owner = string (Required)
    source_identifier = string (Optional)

    custom_policy_details block "list" (Optional) {
      policy_runtime = string (Required)
      policy_text = string (Required)
      enable_debug_log_delivery = bool (Optional)
    }

    source_detail block "set" (Optional) {
      event_source = string (Optional)
      maximum_execution_frequency = string (Optional)
      message_type = string (Optional)
    }
  }
}
