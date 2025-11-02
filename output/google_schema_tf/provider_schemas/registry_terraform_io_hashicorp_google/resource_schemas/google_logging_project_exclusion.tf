resource "google_logging_project_exclusion" "name" {
  filter = string (Required)
  name = string (Required)
  description = string (Optional)
  disabled = bool (Optional)
  id = string (Optional, Computed)
  project = string (Optional, Computed)
}
