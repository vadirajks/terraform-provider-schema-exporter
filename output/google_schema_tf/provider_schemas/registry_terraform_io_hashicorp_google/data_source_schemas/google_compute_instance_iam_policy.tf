data "google_compute_instance_iam_policy" "name" {
  instance_name = string (Required)
  etag = string (Computed)
  id = string (Optional, Computed)
  policy_data = string (Computed)
  project = string (Optional, Computed)
  zone = string (Optional, Computed)
}
