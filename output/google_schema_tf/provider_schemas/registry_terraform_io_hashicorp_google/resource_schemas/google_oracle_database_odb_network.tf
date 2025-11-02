resource "google_oracle_database_odb_network" "name" {
  location = string (Required)
  network = string (Required)
  odb_network_id = string (Required)
  create_time = string (Computed)
  deletion_protection = bool (Optional)
  effective_labels = ['map', 'string'] (Computed)
  entitlement_id = string (Computed)
  gcp_oracle_zone = string (Optional, Computed)
  id = string (Optional, Computed)
  labels = ['map', 'string'] (Optional)
  name = string (Computed)
  project = string (Optional, Computed)
  state = string (Computed)
  terraform_labels = ['map', 'string'] (Computed)

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    update = string (Optional)
  }
}
