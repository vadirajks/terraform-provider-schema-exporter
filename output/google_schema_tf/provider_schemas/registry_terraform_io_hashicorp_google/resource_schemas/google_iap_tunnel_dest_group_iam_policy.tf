resource "google_iap_tunnel_dest_group_iam_policy" "name" {
  dest_group = string (Required)
  policy_data = string (Required)
  etag = string (Computed)
  id = string (Optional, Computed)
  project = string (Optional, Computed)
  region = string (Optional, Computed)
}
