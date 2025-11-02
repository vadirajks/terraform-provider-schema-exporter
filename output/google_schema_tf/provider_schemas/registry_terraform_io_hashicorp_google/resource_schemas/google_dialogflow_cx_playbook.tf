resource "google_dialogflow_cx_playbook" "name" {
  display_name = string (Required)
  goal = string (Required)
  create_time = string (Computed)
  id = string (Optional, Computed)
  name = string (Computed)
  parent = string (Optional)
  playbook_type = string (Optional)
  referenced_flows = ['list', 'string'] (Computed)
  referenced_playbooks = ['list', 'string'] (Computed)
  referenced_tools = ['list', 'string'] (Optional)
  token_count = string (Computed)
  update_time = string (Computed)

  instruction block "list" (Optional) {
    guidelines = string (Optional)

    steps block "list" (Optional) {
      steps = string (Optional)
      text = string (Optional)
    }
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
