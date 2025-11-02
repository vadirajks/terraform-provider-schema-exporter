resource "google_dataproc_metastore_federation" "name" {
  federation_id = string (Required)
  version = string (Required)
  create_time = string (Computed)
  deletion_protection = bool (Optional)
  effective_labels = ['map', 'string'] (Computed)
  endpoint_uri = string (Computed)
  id = string (Optional, Computed)
  labels = ['map', 'string'] (Optional)
  location = string (Optional)
  name = string (Computed)
  project = string (Optional, Computed)
  state = string (Computed)
  state_message = string (Computed)
  tags = ['map', 'string'] (Optional)
  terraform_labels = ['map', 'string'] (Computed)
  uid = string (Computed)
  update_time = string (Computed)

  backend_metastores block "set" (Required) {
    metastore_type = string (Required)
    name = string (Required)
    rank = string (Required)
  }

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    update = string (Optional)
  }
}
