data "google_secret_manager_regional_secret_version" "name" {
  secret = string (Required)
  create_time = string (Computed)
  customer_managed_encryption = ['list', ['object', {'kms_key_version_name': 'string'}]] (Computed)
  destroy_time = string (Computed)
  enabled = bool (Computed)
  id = string (Optional, Computed)
  is_secret_data_base64 = bool (Optional)
  location = string (Optional, Computed)
  name = string (Computed)
  project = string (Optional, Computed)
  secret_data = string (Computed)
  version = string (Optional, Computed)
}
