resource "google_dialogflow_cx_security_settings" "name" {
  display_name = string (Required)
  location = string (Required)
  deidentify_template = string (Optional)
  id = string (Optional, Computed)
  inspect_template = string (Optional)
  name = string (Computed)
  project = string (Optional, Computed)
  purge_data_types = ['list', 'string'] (Optional)
  redaction_scope = string (Optional)
  redaction_strategy = string (Optional)
  retention_strategy = string (Optional)
  retention_window_days = number (Optional)

  audio_export_settings block "list" (Optional) {
    audio_export_pattern = string (Optional)
    audio_format = string (Optional)
    enable_audio_redaction = bool (Optional)
    gcs_bucket = string (Optional)
  }

  insights_export_settings block "list" (Optional) {
    enable_insights_export = bool (Required)
  }

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    update = string (Optional)
  }
}
