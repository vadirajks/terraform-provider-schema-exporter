resource "google_dataplex_glossary_term" "name" {
  location = string (Required)
  parent = string (Required)
  create_time = string (Computed)
  description = string (Optional)
  display_name = string (Optional)
  effective_labels = ['map', 'string'] (Computed)
  glossary_id = string (Optional)
  id = string (Optional, Computed)
  labels = ['map', 'string'] (Optional)
  name = string (Computed)
  project = string (Optional, Computed)
  term_id = string (Optional)
  terraform_labels = ['map', 'string'] (Computed)
  uid = string (Computed)
  update_time = string (Computed)

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    update = string (Optional)
  }
}
