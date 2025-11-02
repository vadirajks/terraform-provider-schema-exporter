data "aws_auditmanager_control" "name" {
  name = string (Required)
  type = string (Required)
  action_plan_instructions = string (Computed)
  action_plan_title = string (Computed)
  arn = string (Computed)
  control_mapping_sources = ['list', ['object', {'source_description': 'string', 'source_frequency': 'string', 'source_id': 'string', 'source_keyword': ['list', ['object', {'keyword_input_type': 'string', 'keyword_value': 'string'}]], 'source_name': 'string', 'source_set_up_option': 'string', 'source_type': 'string', 'troubleshooting_text': 'string'}]] (Computed)
  description = string (Computed)
  id = string (Computed)
  region = string (Optional, Computed)
  tags = ['map', 'string'] (Computed)
  testing_information = string (Computed)
}
