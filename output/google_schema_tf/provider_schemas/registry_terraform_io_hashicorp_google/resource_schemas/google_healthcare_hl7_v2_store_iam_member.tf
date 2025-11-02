resource "google_healthcare_hl7_v2_store_iam_member" "name" {
  hl7_v2_store_id = string (Required)
  member = string (Required)
  role = string (Required)
  etag = string (Computed)
  id = string (Optional, Computed)

  condition block "list" (Optional) {
    expression = string (Required)
    title = string (Required)
    description = string (Optional)
  }
}
