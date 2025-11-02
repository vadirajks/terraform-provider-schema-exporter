data "google_storage_managed_folder_iam_policy" "name" {
  bucket = string (Required)
  managed_folder = string (Required)
  etag = string (Computed)
  id = string (Optional, Computed)
  policy_data = string (Computed)
}
