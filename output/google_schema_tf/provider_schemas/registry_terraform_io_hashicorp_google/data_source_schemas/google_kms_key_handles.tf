data "google_kms_key_handles" "name" {
  location = string (Required)
  resource_type_selector = string (Required)
  id = string (Optional, Computed)
  key_handles = ['list', ['object', {'kms_key': 'string', 'name': 'string', 'resource_type_selector': 'string'}]] (Computed)
  project = string (Optional)
}
