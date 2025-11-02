resource "google_healthcare_fhir_store_iam_binding" "name" {
  fhir_store_id = string (Required)
  members = ['set', 'string'] (Required)
  role = string (Required)
  etag = string (Computed)
  id = string (Optional, Computed)

  condition block "list" (Optional) {
    expression = string (Required)
    title = string (Required)
    description = string (Optional)
  }
}
