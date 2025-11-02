resource "google_discovery_engine_license_config" "name" {
  license_config_id = string (Required)
  license_count = number (Required)
  location = string (Required)
  subscription_term = string (Required)
  subscription_tier = string (Required)
  auto_renew = bool (Optional)
  free_trial = bool (Optional)
  id = string (Optional, Computed)
  name = string (Computed)
  project = string (Optional, Computed)

  end_date block "list" (Optional) {
    day = number (Optional)
    month = number (Optional)
    year = number (Optional)
  }

  start_date block "list" (Required) {
    day = number (Optional)
    month = number (Optional)
    year = number (Optional)
  }

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    update = string (Optional)
  }
}
