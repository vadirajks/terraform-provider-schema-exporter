resource "google_dataplex_glossary" "name" {
  glossary_id = string (Required)
  location = string (Required)
  category_count = number (Computed)
  create_time = string (Computed)
  description = string (Optional)
  display_name = string (Optional)
  effective_labels = ['map', 'string'] (Computed)
  id = string (Optional, Computed)
  labels = ['map', 'string'] (Optional)
  name = string (Computed)
  project = string (Optional, Computed)
  term_count = number (Computed)
  terraform_labels = ['map', 'string'] (Computed)
  uid = string (Computed)
  update_time = string (Computed)

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    update = string (Optional)
  }
}
