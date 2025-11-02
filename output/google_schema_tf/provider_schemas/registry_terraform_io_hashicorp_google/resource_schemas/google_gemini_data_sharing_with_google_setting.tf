resource "google_gemini_data_sharing_with_google_setting" "name" {
  data_sharing_with_google_setting_id = string (Required)
  create_time = string (Computed)
  effective_labels = ['map', 'string'] (Computed)
  enable_data_sharing = bool (Optional)
  enable_preview_data_sharing = bool (Optional)
  id = string (Optional, Computed)
  labels = ['map', 'string'] (Optional)
  location = string (Optional)
  name = string (Computed)
  project = string (Optional, Computed)
  terraform_labels = ['map', 'string'] (Computed)
  update_time = string (Computed)

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    update = string (Optional)
  }
}
