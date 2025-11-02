data "google_kms_key_rings" "name" {
  location = string (Required)
  filter = string (Optional)
  id = string (Optional, Computed)
  key_rings = ['list', ['object', {'id': 'string', 'name': 'string'}]] (Computed)
  project = string (Optional)
}
