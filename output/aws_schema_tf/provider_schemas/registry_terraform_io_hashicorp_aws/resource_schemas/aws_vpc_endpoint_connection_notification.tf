resource "aws_vpc_endpoint_connection_notification" "name" {
  connection_events = ['set', 'string'] (Required)
  connection_notification_arn = string (Required)
  id = string (Optional, Computed)
  notification_type = string (Computed)
  region = string (Optional, Computed)
  state = string (Computed)
  vpc_endpoint_id = string (Optional)
  vpc_endpoint_service_id = string (Optional)
}
