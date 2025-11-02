resource "google_parameter_manager_regional_parameter_version" "name" {
  parameter = string (Required)
  parameter_data = string (Required)
  parameter_version_id = string (Required)
  create_time = string (Computed)
  disabled = bool (Optional)
  id = string (Optional, Computed)
  kms_key_version = string (Computed)
  location = string (Computed)
  name = string (Computed)
  update_time = string (Computed)

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    update = string (Optional)
  }
}
