resource "google_compute_instant_snapshot_iam_policy" "name" {
  name = string (Required)
  policy_data = string (Required)
  etag = string (Computed)
  id = string (Optional, Computed)
  project = string (Optional, Computed)
  zone = string (Optional, Computed)
}
