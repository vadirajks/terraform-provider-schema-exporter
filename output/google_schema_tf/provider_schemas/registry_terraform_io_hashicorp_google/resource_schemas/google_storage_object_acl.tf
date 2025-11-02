resource "google_storage_object_acl" "name" {
  bucket = string (Required)
  object = string (Required)
  id = string (Optional, Computed)
  predefined_acl = string (Optional)
  role_entity = ['set', 'string'] (Optional, Computed)
}
