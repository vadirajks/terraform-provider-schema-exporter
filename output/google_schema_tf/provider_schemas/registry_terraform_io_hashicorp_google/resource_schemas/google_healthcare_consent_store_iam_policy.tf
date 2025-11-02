resource "google_healthcare_consent_store_iam_policy" "name" {
  consent_store_id = string (Required)
  dataset = string (Required)
  policy_data = string (Required)
  etag = string (Computed)
  id = string (Optional, Computed)
}
