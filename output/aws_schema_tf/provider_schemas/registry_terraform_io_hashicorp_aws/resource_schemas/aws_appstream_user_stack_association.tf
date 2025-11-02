resource "aws_appstream_user_stack_association" "name" {
  authentication_type = string (Required)
  stack_name = string (Required)
  user_name = string (Required)
  id = string (Optional, Computed)
  region = string (Optional, Computed)
  send_email_notification = bool (Optional)
}
