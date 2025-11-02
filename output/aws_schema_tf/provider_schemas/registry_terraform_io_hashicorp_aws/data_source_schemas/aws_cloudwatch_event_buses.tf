data "aws_cloudwatch_event_buses" "name" {
  event_buses = ['list', ['object', {'arn': 'string', 'creation_time': 'string', 'description': 'string', 'last_modified_time': 'string', 'name': 'string', 'policy': 'string'}]] (Computed)
  name_prefix = string (Optional)
  region = string (Optional, Computed)
}
