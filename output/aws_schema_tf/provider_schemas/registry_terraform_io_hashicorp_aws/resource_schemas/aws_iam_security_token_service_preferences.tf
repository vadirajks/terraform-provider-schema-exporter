resource "aws_iam_security_token_service_preferences" "name" {
  global_endpoint_token_version = string (Required)
  id = string (Optional, Computed)
}
