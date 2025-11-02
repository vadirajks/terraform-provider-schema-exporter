resource "google_gke_hub_scope_iam_policy" "name" {
  policy_data = string (Required)
  scope_id = string (Required)
  etag = string (Computed)
  id = string (Optional, Computed)
  project = string (Optional, Computed)
}
