data "google_folder_iam_policy" "name" {
  folder = string (Required)
  etag = string (Computed)
  id = string (Optional, Computed)
  policy_data = string (Computed)
}
