resource "aws_api_gateway_integration" "name" {
  http_method = string (Required)
  resource_id = string (Required)
  rest_api_id = string (Required)
  type = string (Required)
  cache_key_parameters = ['set', 'string'] (Optional)
  cache_namespace = string (Optional, Computed)
  connection_id = string (Optional)
  connection_type = string (Optional)
  content_handling = string (Optional)
  credentials = string (Optional)
  id = string (Optional, Computed)
  integration_http_method = string (Optional)
  passthrough_behavior = string (Optional, Computed)
  region = string (Optional, Computed)
  request_parameters = ['map', 'string'] (Optional)
  request_templates = ['map', 'string'] (Optional)
  timeout_milliseconds = number (Optional)
  uri = string (Optional)

  tls_config block "list" (Optional) {
    insecure_skip_verification = bool (Optional)
  }
}
