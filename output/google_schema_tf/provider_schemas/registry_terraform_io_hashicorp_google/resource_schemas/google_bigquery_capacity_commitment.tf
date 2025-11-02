resource "google_bigquery_capacity_commitment" "name" {
  plan = string (Required)
  slot_count = number (Required)
  capacity_commitment_id = string (Optional)
  commitment_end_time = string (Computed)
  commitment_start_time = string (Computed)
  edition = string (Optional)
  enforce_single_admin_project_per_org = string (Optional)
  id = string (Optional, Computed)
  location = string (Optional)
  name = string (Computed)
  project = string (Optional, Computed)
  renewal_plan = string (Optional)
  state = string (Computed)

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    update = string (Optional)
  }
}
