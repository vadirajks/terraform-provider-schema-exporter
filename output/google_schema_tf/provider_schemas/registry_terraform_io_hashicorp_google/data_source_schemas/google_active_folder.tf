data "google_active_folder" "name" {
  display_name = string (Required)
  parent = string (Required)
  api_method = string (Optional)
  id = string (Optional, Computed)
  name = string (Computed)
}
