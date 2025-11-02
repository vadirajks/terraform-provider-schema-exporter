resource "aws_cognito_user_in_group" "name" {
  group_name = string (Required)
  user_pool_id = string (Required)
  username = string (Required)
  id = string (Optional, Computed)
  region = string (Optional, Computed)
}
