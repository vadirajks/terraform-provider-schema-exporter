resource "google_dialogflow_cx_version" "name" {
  display_name = string (Required)
  create_time = string (Computed)
  description = string (Optional)
  id = string (Optional, Computed)
  name = string (Computed)
  nlu_settings = ['list', ['object', {'classification_threshold': 'number', 'model_training_mode': 'string', 'model_type': 'string'}]] (Computed)
  parent = string (Optional)
  state = string (Computed)

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    update = string (Optional)
  }
}
