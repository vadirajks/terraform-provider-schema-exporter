resource "google_kms_key_ring_iam_member" "name" {
  key_ring_id = string (Required)
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
