resource "google_compute_region_commitment" "name" {
  name = string (Required)
  plan = string (Required)
  auto_renew = bool (Optional, Computed)
  category = string (Optional, Computed)
  commitment_id = number (Computed)
  creation_timestamp = string (Computed)
  description = string (Optional)
  end_timestamp = string (Computed)
  existing_reservations = string (Optional, Computed)
  id = string (Optional, Computed)
  project = string (Optional, Computed)
  region = string (Optional, Computed)
  self_link = string (Computed)
  start_timestamp = string (Computed)
  status = string (Computed)
  status_message = string (Computed)
  type = string (Optional, Computed)

  license_resource block "list" (Optional) {
    license = string (Required)
    amount = string (Optional)
    cores_per_license = string (Optional)
  }

  resources block "list" (Optional) {
    accelerator_type = string (Optional)
    amount = string (Optional)
    type = string (Optional)
  }

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
  }
}
