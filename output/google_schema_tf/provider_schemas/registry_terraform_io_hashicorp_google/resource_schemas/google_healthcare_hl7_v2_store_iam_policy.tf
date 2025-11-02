resource "google_healthcare_hl7_v2_store_iam_policy" "name" {
  hl7_v2_store_id = string (Required)
  policy_data = string (Required)
  etag = string (Computed)
  id = string (Optional, Computed)
}
