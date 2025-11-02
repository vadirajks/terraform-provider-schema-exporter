resource "google_dialogflow_entity_type" "name" {
  display_name = string (Required)
  kind = string (Required)
  enable_fuzzy_extraction = bool (Optional)
  id = string (Optional, Computed)
  name = string (Computed)
  project = string (Optional, Computed)

  entities block "list" (Optional) {
    synonyms = ['list', 'string'] (Required)
    value = string (Required)
  }

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    update = string (Optional)
  }
}
