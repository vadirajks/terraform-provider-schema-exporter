resource "aws_workspacesweb_session_logger_association" "name" {
  portal_arn = string (Required)
  session_logger_arn = string (Required)
  region = string (Optional, Computed)
}
