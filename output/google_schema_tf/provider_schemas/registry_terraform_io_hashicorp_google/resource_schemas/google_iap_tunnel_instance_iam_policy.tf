resource "google_iap_tunnel_instance_iam_policy" "name" {
  instance = string (Required)
  policy_data = string (Required)
  etag = string (Computed)
  id = string (Optional, Computed)
  project = string (Optional, Computed)
  zone = string (Optional, Computed)
}
