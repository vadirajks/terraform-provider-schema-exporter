resource "google_dataplex_aspect_type" "name" {
  aspect_type_id = string (Optional)
  create_time = string (Computed)
  data_classification = string (Optional)
  description = string (Optional)
  display_name = string (Optional)
  effective_labels = ['map', 'string'] (Computed)
  id = string (Optional, Computed)
  labels = ['map', 'string'] (Optional)
  location = string (Optional)
  metadata_template = string (Optional)
  name = string (Computed)
  project = string (Optional, Computed)
  terraform_labels = ['map', 'string'] (Computed)
  transfer_status = string (Computed)
  uid = string (Computed)
  update_time = string (Computed)

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    update = string (Optional)
  }
}
