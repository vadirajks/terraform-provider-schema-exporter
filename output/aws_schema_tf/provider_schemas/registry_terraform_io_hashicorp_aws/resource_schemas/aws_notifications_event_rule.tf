resource "aws_notifications_event_rule" "name" {
  event_type = string (Required)
  notification_configuration_arn = string (Required)
  regions = ['set', 'string'] (Required)
  source = string (Required)
  arn = string (Computed)
  event_pattern = string (Optional)
}
