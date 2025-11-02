resource "google_cloud_ids_endpoint" "name" {
  location = string (Required)
  name = string (Required)
  network = string (Required)
  severity = string (Required)
  create_time = string (Computed)
  description = string (Optional)
  endpoint_forwarding_rule = string (Computed)
  endpoint_ip = string (Computed)
  id = string (Optional, Computed)
  project = string (Optional, Computed)
  threat_exceptions = ['list', 'string'] (Optional)
  update_time = string (Computed)

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    update = string (Optional)
  }
}
