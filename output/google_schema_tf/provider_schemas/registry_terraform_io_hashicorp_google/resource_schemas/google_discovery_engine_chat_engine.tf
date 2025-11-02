resource "google_discovery_engine_chat_engine" "name" {
  collection_id = string (Required)
  data_store_ids = ['list', 'string'] (Required)
  display_name = string (Required)
  engine_id = string (Required)
  location = string (Required)
  chat_engine_metadata = ['list', ['object', {'dialogflow_agent': 'string'}]] (Computed)
  create_time = string (Computed)
  id = string (Optional, Computed)
  industry_vertical = string (Optional)
  name = string (Computed)
  project = string (Optional, Computed)
  update_time = string (Computed)

  chat_engine_config block "list" (Required) {
    allow_cross_region = bool (Optional)
    dialogflow_agent_to_link = string (Optional)

    agent_creation_config block "list" (Optional) {
      default_language_code = string (Required)
      time_zone = string (Required)
      business = string (Optional)
      location = string (Optional)
    }
  }

  common_config block "list" (Optional) {
    company_name = string (Optional)
  }

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    update = string (Optional)
  }
}
