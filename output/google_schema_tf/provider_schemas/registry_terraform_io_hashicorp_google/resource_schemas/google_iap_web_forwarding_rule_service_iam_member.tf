resource "google_iap_web_forwarding_rule_service_iam_member" "name" {
  forwarding_rule_service_name = string (Required)
  member = string (Required)
  role = string (Required)
  etag = string (Computed)
  id = string (Optional, Computed)
  project = string (Optional, Computed)

  condition block "list" (Optional) {
    expression = string (Required)
    title = string (Required)
    description = string (Optional)
  }
}
