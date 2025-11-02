resource "google_ml_engine_model" "name" {
  name = string (Required)
  description = string (Optional)
  effective_labels = ['map', 'string'] (Computed)
  id = string (Optional, Computed)
  labels = ['map', 'string'] (Optional)
  online_prediction_console_logging = bool (Optional)
  online_prediction_logging = bool (Optional)
  project = string (Optional, Computed)
  regions = ['list', 'string'] (Optional)
  terraform_labels = ['map', 'string'] (Computed)

  default_version block "list" (Optional) {
    name = string (Required)
  }

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    update = string (Optional)
  }
}
