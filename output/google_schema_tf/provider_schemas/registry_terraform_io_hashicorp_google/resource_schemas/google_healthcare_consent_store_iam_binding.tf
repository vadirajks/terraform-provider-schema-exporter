resource "google_healthcare_consent_store_iam_binding" "name" {
  consent_store_id = string (Required)
  dataset = string (Required)
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
