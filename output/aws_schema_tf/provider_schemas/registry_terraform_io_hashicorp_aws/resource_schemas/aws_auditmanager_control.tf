resource "aws_auditmanager_control" "name" {
  name = string (Required)
  action_plan_instructions = string (Optional)
  action_plan_title = string (Optional)
  arn = string (Computed)
  description = string (Optional)
  id = string (Computed)
  region = string (Optional, Computed)
  tags = ['map', 'string'] (Optional)
  tags_all = ['map', 'string'] (Computed)
  testing_information = string (Optional)
  type = string (Computed)

  control_mapping_sources block "set" (Optional) {
    source_name = string (Required)
    source_set_up_option = string (Required)
    source_type = string (Required)
    source_description = string (Optional)
    source_frequency = string (Optional)
    source_id = string (Computed)
    source_keyword = ['list', ['object', {'keyword_input_type': 'string', 'keyword_value': 'string'}]] (Optional, Computed)
    troubleshooting_text = string (Optional)
  }
}
