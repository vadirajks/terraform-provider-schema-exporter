resource "google_dialogflow_cx_intent" "name" {
  display_name = string (Required)
  description = string (Optional)
  effective_labels = ['map', 'string'] (Computed)
  id = string (Optional, Computed)
  is_default_negative_intent = bool (Optional)
  is_default_welcome_intent = bool (Optional)
  is_fallback = bool (Optional)
  labels = ['map', 'string'] (Optional)
  language_code = string (Optional)
  name = string (Computed)
  parent = string (Optional)
  priority = number (Optional)
  terraform_labels = ['map', 'string'] (Computed)

  parameters block "list" (Optional) {
    entity_type = string (Required)
    id = string (Required)
    is_list = bool (Optional)
    redact = bool (Optional)
  }

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    update = string (Optional)
  }

  training_phrases block "list" (Optional) {
    id = string (Computed)
    repeat_count = number (Optional)

    parts block "list" (Required) {
      text = string (Required)
      parameter_id = string (Optional)
    }
  }
}
