resource "aws_appsync_api_key" "name" {
  api_id = string (Required)
  api_key_id = string (Computed)
  description = string (Optional)
  expires = string (Optional)
  id = string (Optional, Computed)
  key = string (Computed)
  region = string (Optional, Computed)
}
