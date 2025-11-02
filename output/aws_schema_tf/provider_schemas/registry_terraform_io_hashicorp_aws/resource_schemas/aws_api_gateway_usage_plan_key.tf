resource "aws_api_gateway_usage_plan_key" "name" {
  key_id = string (Required)
  key_type = string (Required)
  usage_plan_id = string (Required)
  id = string (Optional, Computed)
  name = string (Computed)
  region = string (Optional, Computed)
  value = string (Computed)
}
