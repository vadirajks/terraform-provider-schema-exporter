data "aws_ssmincidents_response_plan" "name" {
  arn = string (Required)
  action = ['list', ['object', {'ssm_automation': ['list', ['object', {'document_name': 'string', 'document_version': 'string', 'dynamic_parameters': ['map', 'string'], 'parameter': ['set', ['object', {'name': 'string', 'values': ['set', 'string']}]], 'role_arn': 'string', 'target_account': 'string'}]]}]] (Computed)
  chat_channel = ['set', 'string'] (Computed)
  display_name = string (Computed)
  engagements = ['set', 'string'] (Computed)
  id = string (Optional, Computed)
  incident_template = ['list', ['object', {'dedupe_string': 'string', 'impact': 'number', 'incident_tags': ['map', 'string'], 'notification_target': ['set', ['object', {'sns_topic_arn': 'string'}]], 'summary': 'string', 'title': 'string'}]] (Computed)
  integration = ['list', ['object', {'pagerduty': ['list', ['object', {'name': 'string', 'secret_id': 'string', 'service_id': 'string'}]]}]] (Computed)
  name = string (Computed)
  region = string (Optional, Computed)
  tags = ['map', 'string'] (Optional, Computed)
}
