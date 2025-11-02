resource "google_chronicle_rule_deployment" "name" {
  instance = string (Required)
  location = string (Required)
  rule = string (Required)
  alerting = bool (Optional)
  archive_time = string (Computed)
  archived = bool (Optional)
  consumer_rules = ['list', 'string'] (Computed)
  enabled = bool (Optional)
  execution_state = string (Computed)
  id = string (Optional, Computed)
  last_alert_status_change_time = string (Computed)
  name = string (Computed)
  producer_rules = ['list', 'string'] (Computed)
  project = string (Optional, Computed)
  run_frequency = string (Optional)

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    update = string (Optional)
  }
}
