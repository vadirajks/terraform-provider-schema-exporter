resource "google_storage_bucket_iam_member" "name" {
  bucket = string (Required)
  member = string (Required)
  role = string (Required)
  etag = string (Computed)
  id = string (Optional, Computed)

  condition block "list" (Optional) {
    expression = string (Required)
    title = string (Required)
    description = string (Optional)
  }

  timeouts block "single" (Optional) {
    create = string (Optional)
  }
}
