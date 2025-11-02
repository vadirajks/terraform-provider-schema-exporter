data "aws_connect_quick_connect" "name" {
  instance_id = string (Required)
  arn = string (Computed)
  description = string (Computed)
  id = string (Optional, Computed)
  name = string (Optional, Computed)
  quick_connect_config = ['list', ['object', {'phone_config': ['list', ['object', {'phone_number': 'string'}]], 'queue_config': ['list', ['object', {'contact_flow_id': 'string', 'queue_id': 'string'}]], 'quick_connect_type': 'string', 'user_config': ['list', ['object', {'contact_flow_id': 'string', 'user_id': 'string'}]]}]] (Computed)
  quick_connect_id = string (Optional, Computed)
  region = string (Optional, Computed)
  tags = ['map', 'string'] (Optional, Computed)
}
