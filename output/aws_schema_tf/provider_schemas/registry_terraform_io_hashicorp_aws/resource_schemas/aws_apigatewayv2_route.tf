resource "aws_apigatewayv2_route" "name" {
  api_id = string (Required)
  route_key = string (Required)
  api_key_required = bool (Optional)
  authorization_scopes = ['set', 'string'] (Optional)
  authorization_type = string (Optional)
  authorizer_id = string (Optional)
  id = string (Optional, Computed)
  model_selection_expression = string (Optional)
  operation_name = string (Optional)
  region = string (Optional, Computed)
  request_models = ['map', 'string'] (Optional)
  route_response_selection_expression = string (Optional)
  target = string (Optional)

  request_parameter block "set" (Optional) {
    request_parameter_key = string (Required)
    required = bool (Required)
  }
}
