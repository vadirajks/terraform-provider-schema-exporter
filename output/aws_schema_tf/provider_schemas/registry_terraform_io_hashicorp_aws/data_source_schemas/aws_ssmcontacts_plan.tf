data "aws_ssmcontacts_plan" "name" {
  contact_id = string (Required)
  id = string (Optional, Computed)
  region = string (Optional, Computed)
  stage = ['list', ['object', {'duration_in_minutes': 'number', 'target': ['list', ['object', {'channel_target_info': ['list', ['object', {'contact_channel_id': 'string', 'retry_interval_in_minutes': 'number'}]], 'contact_target_info': ['list', ['object', {'contact_id': 'string', 'is_essential': 'bool'}]]}]]}]] (Computed)
}
