resource "google_compute_disk_iam_policy" "name" {
  name = string (Required)
  policy_data = string (Required)
  etag = string (Computed)
  id = string (Optional, Computed)
  project = string (Optional, Computed)
  zone = string (Optional, Computed)
}
