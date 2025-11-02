resource "aws_apigatewayv2_route_response" "name" {
  api_id = string (Required)
  route_id = string (Required)
  route_response_key = string (Required)
  id = string (Optional, Computed)
  model_selection_expression = string (Optional)
  region = string (Optional, Computed)
  response_models = ['map', 'string'] (Optional)
}
