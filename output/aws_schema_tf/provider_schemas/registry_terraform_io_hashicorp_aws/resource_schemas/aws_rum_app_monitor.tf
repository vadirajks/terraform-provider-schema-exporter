resource "aws_rum_app_monitor" "name" {
  name = string (Required)
  app_monitor_id = string (Computed)
  arn = string (Computed)
  cw_log_enabled = bool (Optional)
  cw_log_group = string (Computed)
  domain = string (Optional)
  domain_list = ['list', 'string'] (Optional)
  id = string (Optional, Computed)
  region = string (Optional, Computed)
  tags = ['map', 'string'] (Optional)
  tags_all = ['map', 'string'] (Optional, Computed)

  app_monitor_configuration block "list" (Optional) {
    allow_cookies = bool (Optional)
    enable_xray = bool (Optional)
    excluded_pages = ['set', 'string'] (Optional)
    favorite_pages = ['set', 'string'] (Optional)
    guest_role_arn = string (Optional)
    identity_pool_id = string (Optional)
    included_pages = ['set', 'string'] (Optional)
    session_sample_rate = number (Optional)
    telemetries = ['set', 'string'] (Optional)
  }

  custom_events block "list" (Optional) {
    status = string (Optional)
  }
}
