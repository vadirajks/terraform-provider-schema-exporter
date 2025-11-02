resource "aws_appintegrations_event_integration" "name" {
  eventbridge_bus = string (Required)
  name = string (Required)
  arn = string (Computed)
  description = string (Optional)
  id = string (Optional, Computed)
  region = string (Optional, Computed)
  tags = ['map', 'string'] (Optional)
  tags_all = ['map', 'string'] (Optional, Computed)

  event_filter block "list" (Required) {
    source = string (Required)
  }
}
