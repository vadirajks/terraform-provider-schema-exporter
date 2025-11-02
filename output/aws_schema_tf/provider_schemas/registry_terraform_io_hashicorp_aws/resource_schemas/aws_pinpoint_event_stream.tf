resource "aws_pinpoint_event_stream" "name" {
  application_id = string (Required)
  destination_stream_arn = string (Required)
  role_arn = string (Required)
  id = string (Optional, Computed)
  region = string (Optional, Computed)
}
