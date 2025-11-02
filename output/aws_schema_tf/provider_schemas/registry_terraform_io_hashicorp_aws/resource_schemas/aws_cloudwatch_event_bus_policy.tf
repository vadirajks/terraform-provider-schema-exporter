resource "aws_cloudwatch_event_bus_policy" "name" {
  policy = string (Required)
  event_bus_name = string (Optional)
  id = string (Optional, Computed)
  region = string (Optional, Computed)
}
