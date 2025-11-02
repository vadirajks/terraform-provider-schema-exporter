resource "google_cloud_identity_group" "name" {
  labels = ['map', 'string'] (Required)
  parent = string (Required)
  additional_group_keys = ['list', ['object', {'id': 'string', 'namespace': 'string'}]] (Computed)
  create_time = string (Computed)
  description = string (Optional)
  display_name = string (Optional)
  id = string (Optional, Computed)
  initial_group_config = string (Optional)
  name = string (Computed)
  update_time = string (Computed)

  group_key block "list" (Required) {
    id = string (Required)
    namespace = string (Optional)
  }

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    update = string (Optional)
  }
}
