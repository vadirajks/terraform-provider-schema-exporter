resource "google_folder_access_approval_settings" "name" {
  folder_id = string (Required)
  active_key_version = string (Optional)
  ancestor_has_active_key_version = bool (Computed)
  enrolled_ancestor = bool (Computed)
  id = string (Optional, Computed)
  invalid_key_version = bool (Computed)
  name = string (Computed)
  notification_emails = ['set', 'string'] (Optional, Computed)

  enrolled_services block "set" (Required) {
    cloud_product = string (Required)
    enrollment_level = string (Optional)
  }

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    update = string (Optional)
  }
}
