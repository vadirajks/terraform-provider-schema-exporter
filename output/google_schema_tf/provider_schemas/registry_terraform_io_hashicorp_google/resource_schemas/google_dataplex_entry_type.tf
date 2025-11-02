resource "google_dataplex_entry_type" "name" {
  create_time = string (Computed)
  description = string (Optional)
  display_name = string (Optional)
  effective_labels = ['map', 'string'] (Computed)
  entry_type_id = string (Optional)
  id = string (Optional, Computed)
  labels = ['map', 'string'] (Optional)
  location = string (Optional)
  name = string (Computed)
  platform = string (Optional)
  project = string (Optional, Computed)
  system = string (Optional)
  terraform_labels = ['map', 'string'] (Computed)
  type_aliases = ['list', 'string'] (Optional)
  uid = string (Computed)
  update_time = string (Computed)

  required_aspects block "list" (Optional) {
    type = string (Optional)
  }

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    update = string (Optional)
  }
}
