data "aws_devopsguru_notification_channel" "name" {
  id = string (Required)
  region = string (Optional, Computed)

  filters block "list" (Optional) {
    message_types = ['list', 'string'] (Computed)
    severities = ['list', 'string'] (Computed)
  }

  sns block "list" (Optional) {
    topic_arn = string (Computed)
  }
}
