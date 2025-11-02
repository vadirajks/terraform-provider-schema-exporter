resource "google_storage_managed_folder_iam_binding" "name" {
  bucket = string (Required)
  managed_folder = string (Required)
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
