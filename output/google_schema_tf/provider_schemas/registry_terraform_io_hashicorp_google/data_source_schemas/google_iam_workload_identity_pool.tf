data "google_iam_workload_identity_pool" "name" {
  workload_identity_pool_id = string (Required)
  description = string (Computed)
  disabled = bool (Computed)
  display_name = string (Computed)
  id = string (Optional, Computed)
  name = string (Computed)
  project = string (Optional)
  state = string (Computed)
}
