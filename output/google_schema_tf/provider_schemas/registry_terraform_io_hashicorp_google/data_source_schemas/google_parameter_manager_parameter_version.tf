data "google_parameter_manager_parameter_version" "name" {
  parameter = string (Required)
  parameter_version_id = string (Required)
  create_time = string (Computed)
  disabled = bool (Computed)
  id = string (Optional, Computed)
  kms_key_version = string (Computed)
  name = string (Computed)
  parameter_data = string (Computed)
  project = string (Optional, Computed)
  update_time = string (Computed)
}
