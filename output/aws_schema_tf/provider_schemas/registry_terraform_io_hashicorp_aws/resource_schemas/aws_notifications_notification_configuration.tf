resource "aws_notifications_notification_configuration" "name" {
  description = string (Required)
  name = string (Required)
  aggregation_duration = string (Optional, Computed)
  arn = string (Computed)
  tags = ['map', 'string'] (Optional)
  tags_all = ['map', 'string'] (Computed)
}
