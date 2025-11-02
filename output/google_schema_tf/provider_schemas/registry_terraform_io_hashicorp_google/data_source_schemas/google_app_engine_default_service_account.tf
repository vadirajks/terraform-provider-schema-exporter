data "google_app_engine_default_service_account" "name" {
  display_name = string (Computed)
  email = string (Computed)
  id = string (Optional, Computed)
  member = string (Computed)
  name = string (Computed)
  project = string (Optional, Computed)
  unique_id = string (Computed)
}
