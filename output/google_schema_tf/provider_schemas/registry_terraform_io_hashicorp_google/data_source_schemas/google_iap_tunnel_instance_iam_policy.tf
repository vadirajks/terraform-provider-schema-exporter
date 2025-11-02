data "google_iap_tunnel_instance_iam_policy" "name" {
  instance = string (Required)
  etag = string (Computed)
  id = string (Optional, Computed)
  policy_data = string (Computed)
  project = string (Optional, Computed)
  zone = string (Optional, Computed)
}
