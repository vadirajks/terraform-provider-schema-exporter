resource "google_dns_managed_zone_iam_policy" "name" {
  managed_zone = string (Required)
  policy_data = string (Required)
  etag = string (Computed)
  id = string (Optional, Computed)
  project = string (Optional, Computed)
}
