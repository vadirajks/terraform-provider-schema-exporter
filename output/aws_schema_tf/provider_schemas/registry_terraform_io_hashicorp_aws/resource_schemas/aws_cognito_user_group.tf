resource "aws_cognito_user_group" "name" {
  name = string (Required)
  user_pool_id = string (Required)
  description = string (Optional)
  id = string (Optional, Computed)
  precedence = number (Optional)
  region = string (Optional, Computed)
  role_arn = string (Optional)
}
