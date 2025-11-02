resource "aws_workspacesweb_user_access_logging_settings" "name" {
  kinesis_stream_arn = string (Required)
  associated_portal_arns = ['list', 'string'] (Computed)
  region = string (Optional, Computed)
  tags = ['map', 'string'] (Optional)
  tags_all = ['map', 'string'] (Computed)
  user_access_logging_settings_arn = string (Computed)
}
