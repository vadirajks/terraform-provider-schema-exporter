resource "google_storage_bucket_iam_binding" "name" {
  bucket = string (Required)
  members = ['set', 'string'] (Required)
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
