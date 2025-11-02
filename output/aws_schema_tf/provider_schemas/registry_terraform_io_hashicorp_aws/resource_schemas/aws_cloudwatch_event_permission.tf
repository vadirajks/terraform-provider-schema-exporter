resource "aws_cloudwatch_event_permission" "name" {
  principal = string (Required)
  statement_id = string (Required)
  action = string (Optional)
  event_bus_name = string (Optional)
  id = string (Optional, Computed)
  region = string (Optional, Computed)

  condition block "list" (Optional) {
    key = string (Required)
    type = string (Required)
    value = string (Required)
  }
}
