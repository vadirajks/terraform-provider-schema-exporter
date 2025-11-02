resource "aws_devopsguru_notification_channel" "name" {
  id = string (Computed)
  region = string (Optional, Computed)

  filters block "list" (Optional) {
    message_types = ['set', 'string'] (Optional)
    severities = ['set', 'string'] (Optional)
  }

  sns block "list" (Optional) {
    topic_arn = string (Required)
  }
}
