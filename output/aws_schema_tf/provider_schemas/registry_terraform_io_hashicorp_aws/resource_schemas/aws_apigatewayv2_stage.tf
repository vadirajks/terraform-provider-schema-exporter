resource "aws_apigatewayv2_stage" "name" {
  api_id = string (Required)
  name = string (Required)
  arn = string (Computed)
  auto_deploy = bool (Optional)
  client_certificate_id = string (Optional)
  deployment_id = string (Optional, Computed)
  description = string (Optional)
  execution_arn = string (Computed)
  id = string (Optional, Computed)
  invoke_url = string (Computed)
  region = string (Optional, Computed)
  stage_variables = ['map', 'string'] (Optional)
  tags = ['map', 'string'] (Optional)
  tags_all = ['map', 'string'] (Optional, Computed)

  access_log_settings block "list" (Optional) {
    destination_arn = string (Required)
    format = string (Required)
  }

  default_route_settings block "list" (Optional) {
    data_trace_enabled = bool (Optional)
    detailed_metrics_enabled = bool (Optional)
    logging_level = string (Optional, Computed)
    throttling_burst_limit = number (Optional)
    throttling_rate_limit = number (Optional)
  }

  route_settings block "set" (Optional) {
    route_key = string (Required)
    data_trace_enabled = bool (Optional)
    detailed_metrics_enabled = bool (Optional)
    logging_level = string (Optional, Computed)
    throttling_burst_limit = number (Optional)
    throttling_rate_limit = number (Optional)
  }
}
