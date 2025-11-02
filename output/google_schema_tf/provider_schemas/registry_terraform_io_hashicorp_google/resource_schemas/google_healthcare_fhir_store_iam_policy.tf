resource "google_healthcare_fhir_store_iam_policy" "name" {
  fhir_store_id = string (Required)
  policy_data = string (Required)
  etag = string (Computed)
  id = string (Optional, Computed)
}
