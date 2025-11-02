resource "google_apigee_security_monitoring_condition" "name" {
  condition_id = string (Required)
  org_id = string (Required)
  profile = string (Required)
  scope = string (Required)
  create_time = string (Computed)
  id = string (Optional, Computed)
  name = string (Computed)
  total_deployed_resources = number (Computed)
  total_monitored_resources = number (Computed)
  update_time = string (Computed)

  include_all_resources block "list" (Optional) {
  }

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    update = string (Optional)
  }
}
