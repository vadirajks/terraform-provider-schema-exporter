data "google_container_analysis_note_iam_policy" "name" {
  note = string (Required)
  etag = string (Computed)
  id = string (Optional, Computed)
  policy_data = string (Computed)
  project = string (Optional, Computed)
}
