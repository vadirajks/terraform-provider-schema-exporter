data "google_compute_storage_pool_iam_policy" "name" {
  name = string (Required)
  etag = string (Computed)
  id = string (Optional, Computed)
  policy_data = string (Computed)
  project = string (Optional, Computed)
  zone = string (Optional, Computed)
}
