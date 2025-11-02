resource "aws_api_gateway_method_settings" "name" {
  method_path = string (Required)
  rest_api_id = string (Required)
  stage_name = string (Required)
  id = string (Optional, Computed)
  region = string (Optional, Computed)

  settings block "list" (Required) {
    cache_data_encrypted = bool (Optional, Computed)
    cache_ttl_in_seconds = number (Optional, Computed)
    caching_enabled = bool (Optional, Computed)
    data_trace_enabled = bool (Optional, Computed)
    logging_level = string (Optional, Computed)
    metrics_enabled = bool (Optional, Computed)
    require_authorization_for_cache_control = bool (Optional, Computed)
    throttling_burst_limit = number (Optional)
    throttling_rate_limit = number (Optional)
    unauthorized_cache_control_header_strategy = string (Optional, Computed)
  }
}
