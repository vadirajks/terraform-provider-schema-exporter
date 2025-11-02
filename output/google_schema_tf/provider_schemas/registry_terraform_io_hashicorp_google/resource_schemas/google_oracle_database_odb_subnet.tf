resource "google_oracle_database_odb_subnet" "name" {
  cidr_range = string (Required)
  location = string (Required)
  odb_subnet_id = string (Required)
  odbnetwork = string (Required)
  purpose = string (Required)
  create_time = string (Computed)
  deletion_protection = bool (Optional)
  effective_labels = ['map', 'string'] (Computed)
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
