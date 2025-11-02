resource "google_storage_default_object_acl" "name" {
  bucket = string (Required)
  id = string (Optional, Computed)
  role_entity = ['set', 'string'] (Optional, Computed)
}
