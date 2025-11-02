resource "google_dialogflow_cx_generative_settings" "name" {
  language_code = string (Required)
  id = string (Optional, Computed)
  name = string (Computed)
  parent = string (Optional)

  fallback_settings block "list" (Optional) {
    selected_prompt = string (Optional)

    prompt_templates block "list" (Optional) {
      display_name = string (Optional)
      frozen = bool (Optional)
      prompt_text = string (Optional)
    }
  }

  generative_safety_settings block "list" (Optional) {
    default_banned_phrase_match_strategy = string (Optional)

    banned_phrases block "list" (Optional) {
      language_code = string (Required)
      text = string (Required)
    }
  }

  knowledge_connector_settings block "list" (Optional) {
    agent = string (Optional)
    agent_identity = string (Optional)
    agent_scope = string (Optional)
    business = string (Optional)
    business_description = string (Optional)
    disable_data_store_fallback = bool (Optional)
  }

  llm_model_settings block "list" (Optional) {
    model = string (Optional)
    prompt_text = string (Optional)
  }

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    update = string (Optional)
  }
}
