resource "google_binary_authorization_attestor_iam_policy" "name" {
  attestor = string (Required)
  policy_data = string (Required)
  etag = string (Computed)
  id = string (Optional, Computed)
  project = string (Optional, Computed)
}
