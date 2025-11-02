data "google_gke_hub_scope_iam_policy" "name" {
  scope_id = string (Required)
  etag = string (Computed)
  id = string (Optional, Computed)
  policy_data = string (Computed)
  project = string (Optional, Computed)
}
