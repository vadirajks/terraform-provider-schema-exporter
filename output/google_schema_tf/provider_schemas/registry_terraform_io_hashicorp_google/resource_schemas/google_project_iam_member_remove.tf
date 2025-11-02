resource "google_project_iam_member_remove" "name" {
  member = string (Required)
  project = string (Required)
  role = string (Required)
  id = string (Optional, Computed)
}
