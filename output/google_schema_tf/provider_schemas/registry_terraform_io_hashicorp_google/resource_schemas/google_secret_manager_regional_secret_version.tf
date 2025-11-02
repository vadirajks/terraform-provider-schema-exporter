resource "google_secret_manager_regional_secret_version" "name" {
  secret = string (Required)
  secret_data = string (Required)
  create_time = string (Computed)
  customer_managed_encryption = ['list', ['object', {'kms_key_version_name': 'string'}]] (Computed)
  deletion_policy = string (Optional)
  destroy_time = string (Computed)
  enabled = bool (Optional)
  id = string (Optional, Computed)
  is_secret_data_base64 = bool (Optional)
  location = string (Computed)
  name = string (Computed)
  version = string (Computed)

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    update = string (Optional)
  }
}
