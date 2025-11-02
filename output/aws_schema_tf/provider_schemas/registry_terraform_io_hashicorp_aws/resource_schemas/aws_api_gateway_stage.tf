resource "aws_api_gateway_stage" "name" {
  deployment_id = string (Required)
  rest_api_id = string (Required)
  stage_name = string (Required)
  arn = string (Computed)
  cache_cluster_enabled = bool (Optional)
  cache_cluster_size = string (Optional)
  client_certificate_id = string (Optional)
  description = string (Optional)
  documentation_version = string (Optional)
  execution_arn = string (Computed)
  id = string (Optional, Computed)
  invoke_url = string (Computed)
  region = string (Optional, Computed)
  tags = ['map', 'string'] (Optional)
  tags_all = ['map', 'string'] (Optional, Computed)
  variables = ['map', 'string'] (Optional)
  web_acl_arn = string (Computed)
  xray_tracing_enabled = bool (Optional)

  access_log_settings block "list" (Optional) {
    destination_arn = string (Required)
    format = string (Required)
  }

  canary_settings block "list" (Optional) {
    deployment_id = string (Required)
    percent_traffic = number (Optional)
    stage_variable_overrides = ['map', 'string'] (Optional)
    use_stage_cache = bool (Optional)
  }
}
