resource "aws_appstream_user" "name" {
  authentication_type = string (Required)
  user_name = string (Required)
  arn = string (Computed)
  created_time = string (Computed)
  enabled = bool (Optional)
  first_name = string (Optional)
  id = string (Optional, Computed)
  last_name = string (Optional)
  region = string (Optional, Computed)
  send_email_notification = bool (Optional)
}
