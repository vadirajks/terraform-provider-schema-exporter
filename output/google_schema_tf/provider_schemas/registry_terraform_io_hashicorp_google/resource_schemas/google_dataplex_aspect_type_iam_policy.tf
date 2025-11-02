resource "google_dataplex_aspect_type_iam_policy" "name" {
  aspect_type_id = string (Required)
  policy_data = string (Required)
  etag = string (Computed)
  id = string (Optional, Computed)
  location = string (Optional, Computed)
  project = string (Optional, Computed)
}
