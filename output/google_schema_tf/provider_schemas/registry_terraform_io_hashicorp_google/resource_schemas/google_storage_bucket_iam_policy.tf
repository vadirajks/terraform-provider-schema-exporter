resource "google_storage_bucket_iam_policy" "name" {
  bucket = string (Required)
  policy_data = string (Required)
  etag = string (Computed)
  id = string (Optional, Computed)

  timeouts block "single" (Optional) {
    create = string (Optional)
  }
}
