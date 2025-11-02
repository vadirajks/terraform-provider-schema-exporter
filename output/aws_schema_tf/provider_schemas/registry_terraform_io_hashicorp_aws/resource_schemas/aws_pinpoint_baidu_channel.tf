resource "aws_pinpoint_baidu_channel" "name" {
  api_key = string (Required)
  application_id = string (Required)
  secret_key = string (Required)
  enabled = bool (Optional)
  id = string (Optional, Computed)
  region = string (Optional, Computed)
}
