data "google_parameter_manager_regional_parameter_version_render" "name" {
  parameter = string (Required)
  parameter_version_id = string (Required)
  disabled = bool (Computed)
  id = string (Optional, Computed)
  location = string (Optional, Computed)
  name = string (Computed)
  parameter_data = string (Computed)
  project = string (Optional, Computed)
  rendered_parameter_data = string (Computed)
}
