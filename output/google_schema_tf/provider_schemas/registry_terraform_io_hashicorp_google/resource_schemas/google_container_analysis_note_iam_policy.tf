resource "google_container_analysis_note_iam_policy" "name" {
  note = string (Required)
  policy_data = string (Required)
  etag = string (Computed)
  id = string (Optional, Computed)
  project = string (Optional, Computed)
}
