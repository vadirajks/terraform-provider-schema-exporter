resource "google_dialogflow_intent" "name" {
  display_name = string (Required)
  action = string (Optional, Computed)
  default_response_platforms = ['list', 'string'] (Optional)
  events = ['list', 'string'] (Optional)
  followup_intent_info = ['list', ['object', {'followup_intent_name': 'string', 'parent_followup_intent_name': 'string'}]] (Computed)
  id = string (Optional, Computed)
  input_context_names = ['list', 'string'] (Optional)
  is_fallback = bool (Optional, Computed)
  ml_disabled = bool (Optional, Computed)
  name = string (Computed)
  parent_followup_intent_name = string (Optional, Computed)
  priority = number (Optional, Computed)
  project = string (Optional, Computed)
  reset_contexts = bool (Optional, Computed)
  root_followup_intent_name = string (Computed)
  webhook_state = string (Optional, Computed)

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    update = string (Optional)
  }
}
