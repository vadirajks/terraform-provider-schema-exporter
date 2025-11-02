resource "google_storage_default_object_access_control" "name" {
  bucket = string (Required)
  entity = string (Required)
  role = string (Required)
  domain = string (Computed)
  email = string (Computed)
  entity_id = string (Computed)
  generation = number (Computed)
  id = string (Optional, Computed)
  object = string (Optional)
  project_team = ['list', ['object', {'project_number': 'string', 'team': 'string'}]] (Computed)

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    update = string (Optional)
  }
}
