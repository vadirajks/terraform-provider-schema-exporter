resource "google_app_engine_domain_mapping" "name" {
  domain_name = string (Required)
  id = string (Optional, Computed)
  name = string (Computed)
  override_strategy = string (Optional)
  project = string (Optional, Computed)
  resource_records = ['list', ['object', {'name': 'string', 'rrdata': 'string', 'type': 'string'}]] (Computed)

  ssl_settings block "list" (Optional) {
    ssl_management_type = string (Required)
    certificate_id = string (Optional, Computed)
    pending_managed_certificate_id = string (Computed)
  }

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    update = string (Optional)
  }
}
