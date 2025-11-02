data "google_storage_bucket_iam_policy" "name" {
  bucket = string (Required)
  etag = string (Computed)
  id = string (Optional, Computed)
  policy_data = string (Computed)
}
