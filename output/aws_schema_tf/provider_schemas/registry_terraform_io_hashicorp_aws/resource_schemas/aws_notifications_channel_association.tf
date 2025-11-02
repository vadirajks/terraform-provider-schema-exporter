resource "aws_notifications_channel_association" "name" {
  arn = string (Required)
  notification_configuration_arn = string (Required)
}
