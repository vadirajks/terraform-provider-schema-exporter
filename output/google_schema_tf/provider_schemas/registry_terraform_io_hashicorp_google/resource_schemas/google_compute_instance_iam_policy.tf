resource "google_compute_instance_iam_policy" "name" {
  instance_name = string (Required)
  policy_data = string (Required)
  etag = string (Computed)
  id = string (Optional, Computed)
  project = string (Optional, Computed)
  zone = string (Optional, Computed)
}
