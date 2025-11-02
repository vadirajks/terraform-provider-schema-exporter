data "aws_cognito_user_pool_clients" "name" {
  user_pool_id = string (Required)
  client_ids = ['list', 'string'] (Computed)
  client_names = ['list', 'string'] (Computed)
  id = string (Optional, Computed)
  region = string (Optional, Computed)
}
