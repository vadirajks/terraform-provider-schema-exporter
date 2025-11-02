data "aws_cognito_user_pool_signing_certificate" "name" {
  user_pool_id = string (Required)
  certificate = string (Computed)
  id = string (Optional, Computed)
  region = string (Optional, Computed)
}
