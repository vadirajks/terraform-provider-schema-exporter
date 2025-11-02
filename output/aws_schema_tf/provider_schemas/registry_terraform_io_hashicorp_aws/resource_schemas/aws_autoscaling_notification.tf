resource "aws_autoscaling_notification" "name" {
  group_names = ['set', 'string'] (Required)
  notifications = ['set', 'string'] (Required)
  topic_arn = string (Required)
  id = string (Optional, Computed)
  region = string (Optional, Computed)
}
