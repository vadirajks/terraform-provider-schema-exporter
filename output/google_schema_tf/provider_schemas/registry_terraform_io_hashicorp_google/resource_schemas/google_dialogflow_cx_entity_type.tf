resource "google_dialogflow_cx_entity_type" "name" {
  display_name = string (Required)
  kind = string (Required)
  auto_expansion_mode = string (Optional)
  enable_fuzzy_extraction = bool (Optional)
  id = string (Optional, Computed)
  language_code = string (Optional)
  name = string (Computed)
  parent = string (Optional)
  redact = bool (Optional)

  entities block "list" (Required) {
    synonyms = ['list', 'string'] (Optional)
    value = string (Optional)
  }

  excluded_phrases block "list" (Optional) {
    value = string (Optional)
  }

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    update = string (Optional)
  }
}
