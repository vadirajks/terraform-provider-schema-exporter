data "aws_connect_hours_of_operation" "name" {
  instance_id = string (Required)
  arn = string (Computed)
  config = ['set', ['object', {'day': 'string', 'end_time': ['list', ['object', {'hours': 'number', 'minutes': 'number'}]], 'start_time': ['list', ['object', {'hours': 'number', 'minutes': 'number'}]]}]] (Computed)
  description = string (Computed)
  hours_of_operation_id = string (Optional, Computed)
  id = string (Optional, Computed)
  name = string (Optional, Computed)
  region = string (Optional, Computed)
  tags = ['map', 'string'] (Optional, Computed)
  time_zone = string (Computed)
}
