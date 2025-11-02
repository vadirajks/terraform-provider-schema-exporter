resource "google_iam_workload_identity_pool" "name" {
  workload_identity_pool_id = string (Required)
  description = string (Optional)
  disabled = bool (Optional)
  display_name = string (Optional)
  id = string (Optional, Computed)
  name = string (Computed)
  project = string (Optional, Computed)
  state = string (Computed)

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    update = string (Optional)
  }
}
