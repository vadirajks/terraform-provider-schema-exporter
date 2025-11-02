data "aws_sesv2_configuration_set" "name" {
  configuration_set_name = string (Required)
  arn = string (Computed)
  delivery_options = ['list', ['object', {'max_delivery_seconds': 'number', 'sending_pool_name': 'string', 'tls_policy': 'string'}]] (Computed)
  id = string (Optional, Computed)
  region = string (Optional, Computed)
  reputation_options = ['list', ['object', {'last_fresh_start': 'string', 'reputation_metrics_enabled': 'bool'}]] (Computed)
  sending_options = ['list', ['object', {'sending_enabled': 'bool'}]] (Computed)
  suppression_options = ['list', ['object', {'suppressed_reasons': ['list', 'string']}]] (Computed)
  tags = ['map', 'string'] (Optional, Computed)
  tracking_options = ['list', ['object', {'custom_redirect_domain': 'string', 'https_policy': 'string'}]] (Computed)
  vdm_options = ['list', ['object', {'dashboard_options': ['list', ['object', {'engagement_metrics': 'string'}]], 'guardian_options': ['list', ['object', {'optimized_shared_delivery': 'string'}]]}]] (Computed)
}
