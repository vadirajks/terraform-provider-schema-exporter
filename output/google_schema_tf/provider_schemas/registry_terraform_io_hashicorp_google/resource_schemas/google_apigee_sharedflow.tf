resource "google_apigee_sharedflow" "name" {
  config_bundle = string (Required)
  name = string (Required)
  org_id = string (Required)
  detect_md5hash = string (Optional)
  id = string (Optional, Computed)
  latest_revision_id = string (Computed)
  md5hash = string (Computed)
  meta_data = ['list', ['object', {'created_at': 'string', 'last_modified_at': 'string', 'sub_type': 'string'}]] (Computed)
  revision = ['list', 'string'] (Computed)

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    update = string (Optional)
  }
}
