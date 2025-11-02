resource "google_gemini_gemini_gcp_enablement_setting" "name" {
  gemini_gcp_enablement_setting_id = string (Required)
  location = string (Required)
  create_time = string (Computed)
  disable_web_grounding = bool (Optional)
  effective_labels = ['map', 'string'] (Computed)
  enable_customer_data_sharing = bool (Optional)
  id = string (Optional, Computed)
  labels = ['map', 'string'] (Optional)
  name = string (Computed)
  project = string (Optional, Computed)
  terraform_labels = ['map', 'string'] (Computed)
  update_time = string (Computed)
  web_grounding_type = string (Optional)

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    update = string (Optional)
  }
}
