resource "google_compute_per_instance_config" "name" {
  instance_group_manager = string (Required)
  name = string (Required)
  id = string (Optional, Computed)
  minimal_action = string (Optional)
  most_disruptive_allowed_action = string (Optional)
  project = string (Optional, Computed)
  remove_instance_on_destroy = bool (Optional)
  remove_instance_state_on_destroy = bool (Optional)
  zone = string (Optional, Computed)

  preserved_state block "list" (Optional) {
    metadata = ['map', 'string'] (Optional)

    disk block "set" (Optional) {
      device_name = string (Required)
      source = string (Required)
      delete_rule = string (Optional)
      mode = string (Optional)
    }

    external_ip block "set" (Optional) {
      interface_name = string (Required)
      auto_delete = string (Optional)

      ip_address block "list" (Optional) {
        address = string (Optional)
      }
    }

    internal_ip block "set" (Optional) {
      interface_name = string (Required)
      auto_delete = string (Optional)

      ip_address block "list" (Optional) {
        address = string (Optional)
      }
    }
  }

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    update = string (Optional)
  }
}
