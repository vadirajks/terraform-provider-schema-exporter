resource "google_discovery_engine_target_site" "name" {
  data_store_id = string (Required)
  location = string (Required)
  provided_uri_pattern = string (Required)
  exact_match = bool (Optional)
  failure_reason = ['list', ['object', {'quota_failure': ['list', ['object', {'total_required_quota': 'number'}]]}]] (Computed)
  generated_uri_pattern = string (Computed)
  id = string (Optional, Computed)
  indexing_status = string (Computed)
  name = string (Computed)
  project = string (Optional, Computed)
  root_domain_uri = string (Computed)
  site_verification_info = ['list', ['object', {'site_verification_state': 'string', 'verify_time': 'string'}]] (Computed)
  target_site_id = string (Computed)
  type = string (Optional)
  update_time = string (Computed)

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
  }
}
