resource "google_network_services_wasm_plugin" "name" {
  main_version_id = string (Required)
  name = string (Required)
  create_time = string (Computed)
  description = string (Optional)
  effective_labels = ['map', 'string'] (Computed)
  id = string (Optional, Computed)
  labels = ['map', 'string'] (Optional)
  location = string (Optional)
  project = string (Optional, Computed)
  terraform_labels = ['map', 'string'] (Computed)
  update_time = string (Computed)
  used_by = ['list', ['object', {'name': 'string'}]] (Computed)

  log_config block "list" (Optional) {
    enable = bool (Optional)
    min_log_level = string (Optional, Computed)
    sample_rate = number (Optional, Computed)
  }

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    update = string (Optional)
  }

  versions block "set" (Required) {
    version_name = string (Required)
    create_time = string (Computed)
    description = string (Optional)
    image_digest = string (Computed)
    image_uri = string (Optional)
    labels = ['map', 'string'] (Optional)
    plugin_config_data = string (Optional)
    plugin_config_digest = string (Computed)
    plugin_config_uri = string (Optional)
    update_time = string (Computed)
  }
}
