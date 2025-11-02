resource "google_iap_web_forwarding_rule_service_iam_policy" "name" {
  forwarding_rule_service_name = string (Required)
  policy_data = string (Required)
  etag = string (Computed)
  id = string (Optional, Computed)
  project = string (Optional, Computed)
}
