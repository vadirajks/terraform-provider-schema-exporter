data "aws_codeartifact_authorization_token" "name" {
  domain = string (Required)
  authorization_token = string (Computed)
  domain_owner = string (Optional, Computed)
  duration_seconds = number (Optional)
  expiration = string (Computed)
  id = string (Optional, Computed)
  region = string (Optional, Computed)
}
