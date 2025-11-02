resource "aws_api_gateway_deployment" "name" {
  rest_api_id = string (Required)
  created_date = string (Computed)
  description = string (Optional)
  id = string (Optional, Computed)
  region = string (Optional, Computed)
  triggers = ['map', 'string'] (Optional)
  variables = ['map', 'string'] (Optional)
}
