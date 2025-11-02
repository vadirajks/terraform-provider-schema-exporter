resource "aws_ses_identity_notification_topic" "name" {
  identity = string (Required)
  notification_type = string (Required)
  id = string (Optional, Computed)
  include_original_headers = bool (Optional)
  region = string (Optional, Computed)
  topic_arn = string (Optional)
}
