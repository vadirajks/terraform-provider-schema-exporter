data "aws_cognito_user_group" "name" {
  name = string (Required)
  user_pool_id = string (Required)
  description = string (Computed)
  id = string (Computed)
  precedence = number (Computed)
  region = string (Optional, Computed)
  role_arn = string (Computed)
}
