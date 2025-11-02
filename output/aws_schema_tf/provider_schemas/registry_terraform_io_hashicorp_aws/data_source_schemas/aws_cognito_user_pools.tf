data "aws_cognito_user_pools" "name" {
  name = string (Required)
  arns = ['list', 'string'] (Computed)
  id = string (Optional, Computed)
  ids = ['list', 'string'] (Computed)
  region = string (Optional, Computed)
}
