resource "google_app_engine_application" "name" {
  location_id = string (Required)
  app_id = string (Computed)
  auth_domain = string (Optional, Computed)
  code_bucket = string (Computed)
  database_type = string (Optional, Computed)
  default_bucket = string (Computed)
  default_hostname = string (Computed)
  gcr_domain = string (Computed)
  id = string (Optional, Computed)
  name = string (Computed)
  project = string (Optional, Computed)
  serving_status = string (Optional, Computed)
  ssl_policy = string (Optional, Computed)
  url_dispatch_rule = ['list', ['object', {'domain': 'string', 'path': 'string', 'service': 'string'}]] (Computed)

  feature_settings block "list" (Optional) {
    split_health_checks = bool (Required)
  }

  iap block "list" (Optional) {
    oauth2_client_id = string (Required)
    oauth2_client_secret = string (Required)
    enabled = bool (Optional)
    oauth2_client_secret_sha256 = string (Computed)
  }

  timeouts block "single" (Optional) {
    create = string (Optional)
    update = string (Optional)
  }
}
