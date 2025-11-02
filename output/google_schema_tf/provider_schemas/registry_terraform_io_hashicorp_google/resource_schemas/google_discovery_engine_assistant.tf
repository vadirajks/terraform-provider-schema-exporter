resource "google_discovery_engine_assistant" "name" {
  assistant_id = string (Required)
  collection_id = string (Required)
  display_name = string (Required)
  engine_id = string (Required)
  location = string (Required)
  description = string (Optional)
  id = string (Optional, Computed)
  name = string (Computed)
  project = string (Optional, Computed)
  web_grounding_type = string (Optional)

  customer_policy block "list" (Optional) {

    banned_phrases block "list" (Optional) {
      phrase = string (Required)
      ignore_diacritics = bool (Optional)
      match_type = string (Optional)
    }

    model_armor_config block "list" (Optional) {
      response_template = string (Required)
      user_prompt_template = string (Required)
      failure_mode = string (Optional)
    }
  }

  generation_config block "list" (Optional) {
    default_language = string (Optional)

    system_instruction block "list" (Optional) {
      additional_system_instruction = string (Optional)
    }
  }

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    update = string (Optional)
  }
}
