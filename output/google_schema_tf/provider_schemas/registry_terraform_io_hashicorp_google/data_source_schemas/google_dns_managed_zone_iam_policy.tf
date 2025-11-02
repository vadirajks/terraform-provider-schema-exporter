data "google_dns_managed_zone_iam_policy" "name" {
  managed_zone = string (Required)
  etag = string (Computed)
  id = string (Optional, Computed)
  policy_data = string (Computed)
  project = string (Optional, Computed)
}
