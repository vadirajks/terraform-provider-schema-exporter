resource "google_gemini_code_repository_index" "name" {
  code_repository_index_id = string (Required)
  location = string (Required)
  create_time = string (Computed)
  effective_labels = ['map', 'string'] (Computed)
  force_destroy = bool (Optional)
  id = string (Optional, Computed)
  kms_key = string (Optional)
  labels = ['map', 'string'] (Optional)
  name = string (Computed)
  project = string (Optional, Computed)
  state = string (Computed)
  terraform_labels = ['map', 'string'] (Computed)
  update_time = string (Computed)

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    update = string (Optional)
  }
}
