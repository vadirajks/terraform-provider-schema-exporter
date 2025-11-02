data "aws_appintegrations_event_integration" "name" {
  name = string (Required)
  arn = string (Computed)
  description = string (Computed)
  event_filter = ['list', ['object', {'source': 'string'}]] (Computed)
  eventbridge_bus = string (Computed)
  id = string (Optional, Computed)
  region = string (Optional, Computed)
  tags = ['map', 'string'] (Optional, Computed)
}
