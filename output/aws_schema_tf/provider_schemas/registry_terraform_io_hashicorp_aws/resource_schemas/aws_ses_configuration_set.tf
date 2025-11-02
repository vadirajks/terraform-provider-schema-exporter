resource "aws_ses_configuration_set" "name" {
  name = string (Required)
  arn = string (Computed)
  id = string (Optional, Computed)
  last_fresh_start = string (Computed)
  region = string (Optional, Computed)
  reputation_metrics_enabled = bool (Optional)
  sending_enabled = bool (Optional)

  delivery_options block "list" (Optional) {
    tls_policy = string (Optional)
  }

  tracking_options block "list" (Optional) {
    custom_redirect_domain = string (Optional)
  }
}
