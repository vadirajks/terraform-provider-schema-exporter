resource "aws_api_gateway_account" "name" {
  api_key_version = string (Computed)
  cloudwatch_role_arn = string (Optional, Computed)
  features = ['set', 'string'] (Computed)
  id = string (Computed)
  region = string (Optional, Computed)
  throttle_settings = ['list', ['object', {'burst_limit': 'number', 'rate_limit': 'number'}]] (Computed)
}
