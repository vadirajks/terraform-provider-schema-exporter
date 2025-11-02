resource "aws_sesv2_configuration_set" "name" {
  configuration_set_name = string (Required)
  arn = string (Computed)
  id = string (Optional, Computed)
  region = string (Optional, Computed)
  tags = ['map', 'string'] (Optional)
  tags_all = ['map', 'string'] (Optional, Computed)

  delivery_options block "list" (Optional) {
    max_delivery_seconds = number (Optional)
    sending_pool_name = string (Optional)
    tls_policy = string (Optional)
  }

  reputation_options block "list" (Optional) {
    last_fresh_start = string (Computed)
    reputation_metrics_enabled = bool (Optional, Computed)
  }

  sending_options block "list" (Optional) {
    sending_enabled = bool (Optional, Computed)
  }

  suppression_options block "list" (Optional) {
    suppressed_reasons = ['list', 'string'] (Optional)
  }

  tracking_options block "list" (Optional) {
    custom_redirect_domain = string (Required)
    https_policy = string (Optional)
  }

  vdm_options block "list" (Optional) {

    dashboard_options block "list" (Optional) {
      engagement_metrics = string (Optional)
    }

    guardian_options block "list" (Optional) {
      optimized_shared_delivery = string (Optional)
    }
  }
}
