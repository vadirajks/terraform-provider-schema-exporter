resource "google_dialogflow_cx_generator" "name" {
  display_name = string (Required)
  id = string (Optional, Computed)
  language_code = string (Optional)
  name = string (Computed)
  parent = string (Optional)

  llm_model_settings block "list" (Optional) {
    model = string (Optional)
    prompt_text = string (Optional)
  }

  model_parameter block "list" (Optional) {
    max_decode_steps = number (Optional)
    temperature = number (Optional)
    top_k = number (Optional)
    top_p = number (Optional)
  }

  placeholders block "list" (Optional) {
    id = string (Optional)
    name = string (Optional)
  }

  prompt_text block "list" (Required) {
    text = string (Optional)
  }

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    update = string (Optional)
  }
}
