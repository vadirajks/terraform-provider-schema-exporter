resource "google_folder_iam_policy" "name" {
  folder = string (Required)
  policy_data = string (Required)
  etag = string (Computed)
  id = string (Optional, Computed)
}
