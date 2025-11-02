resource "aws_apigatewayv2_integration" "name" {
  api_id = string (Required)
  integration_type = string (Required)
  connection_id = string (Optional)
  connection_type = string (Optional)
  content_handling_strategy = string (Optional)
  credentials_arn = string (Optional)
  description = string (Optional)
  id = string (Optional, Computed)
  integration_method = string (Optional)
  integration_response_selection_expression = string (Computed)
  integration_subtype = string (Optional)
  integration_uri = string (Optional)
  passthrough_behavior = string (Optional)
  payload_format_version = string (Optional)
  region = string (Optional, Computed)
  request_parameters = ['map', 'string'] (Optional)
  request_templates = ['map', 'string'] (Optional)
  template_selection_expression = string (Optional)
  timeout_milliseconds = number (Optional, Computed)

  response_parameters block "set" (Optional) {
    mappings = ['map', 'string'] (Required)
    status_code = string (Required)
  }

  tls_config block "list" (Optional) {
    server_name_to_verify = string (Optional)
  }
}
