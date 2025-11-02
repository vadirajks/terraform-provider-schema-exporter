resource "google_privateca_ca_pool_iam_policy" "name" {
  ca_pool = string (Required)
  policy_data = string (Required)
  etag = string (Computed)
  id = string (Optional, Computed)
  location = string (Optional, Computed)
  project = string (Optional, Computed)
}
