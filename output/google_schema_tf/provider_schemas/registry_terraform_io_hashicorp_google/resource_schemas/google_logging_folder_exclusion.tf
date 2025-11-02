resource "google_logging_folder_exclusion" "name" {
  filter = string (Required)
  folder = string (Required)
  name = string (Required)
  description = string (Optional)
  disabled = bool (Optional)
  id = string (Optional, Computed)
}
