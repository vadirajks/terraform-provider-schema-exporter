resource "google_storage_bucket_acl" "name" {
  bucket = string (Required)
  default_acl = string (Optional)
  id = string (Optional, Computed)
  predefined_acl = string (Optional)
  role_entity = ['list', 'string'] (Optional, Computed)
}
