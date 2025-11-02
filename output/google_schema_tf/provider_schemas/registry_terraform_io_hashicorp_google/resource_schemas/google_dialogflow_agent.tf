resource "google_dialogflow_agent" "name" {
  default_language_code = string (Required)
  display_name = string (Required)
  time_zone = string (Required)
  api_version = string (Optional, Computed)
  avatar_uri = string (Optional)
  avatar_uri_backend = string (Computed)
  classification_threshold = number (Optional)
  description = string (Optional)
  enable_logging = bool (Optional)
  id = string (Optional, Computed)
  match_mode = string (Optional, Computed)
  project = string (Optional, Computed)
  supported_language_codes = ['list', 'string'] (Optional)
  tier = string (Optional)

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    update = string (Optional)
  }
}
