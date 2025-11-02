resource "google_eventarc_google_api_source" "name" {
  destination = string (Required)
  google_api_source_id = string (Required)
  location = string (Required)
  annotations = ['map', 'string'] (Optional)
  create_time = string (Computed)
  crypto_key_name = string (Optional)
  display_name = string (Optional)
  effective_annotations = ['map', 'string'] (Computed)
  effective_labels = ['map', 'string'] (Computed)
  etag = string (Computed)
  id = string (Optional, Computed)
  labels = ['map', 'string'] (Optional)
  name = string (Computed)
  project = string (Optional, Computed)
  terraform_labels = ['map', 'string'] (Computed)
  uid = string (Computed)
  update_time = string (Computed)

  logging_config block "list" (Optional) {
    log_severity = string (Optional, Computed)
  }

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    update = string (Optional)
  }
}
