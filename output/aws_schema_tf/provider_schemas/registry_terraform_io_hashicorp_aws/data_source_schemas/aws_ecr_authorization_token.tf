data "aws_ecr_authorization_token" "name" {
  authorization_token = string (Computed)
  expires_at = string (Computed)
  id = string (Optional, Computed)
  password = string (Computed)
  proxy_endpoint = string (Computed)
  region = string (Optional, Computed)
  registry_id = string (Optional)
  user_name = string (Computed)
}
