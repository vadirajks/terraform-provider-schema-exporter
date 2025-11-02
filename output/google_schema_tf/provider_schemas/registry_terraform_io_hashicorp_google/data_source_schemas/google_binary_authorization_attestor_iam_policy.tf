data "google_binary_authorization_attestor_iam_policy" "name" {
  attestor = string (Required)
  etag = string (Computed)
  id = string (Optional, Computed)
  policy_data = string (Computed)
  project = string (Optional, Computed)
}
