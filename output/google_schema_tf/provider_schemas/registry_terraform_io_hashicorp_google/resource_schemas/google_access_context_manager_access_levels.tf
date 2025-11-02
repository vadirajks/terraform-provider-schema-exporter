resource "google_access_context_manager_access_levels" "name" {
  parent = string (Required)
  id = string (Optional, Computed)

  access_levels block "set" (Optional) {
    name = string (Required)
    title = string (Required)
    description = string (Optional)

    basic block "list" (Optional) {
      combining_function = string (Optional)

      conditions block "list" (Required) {
        ip_subnetworks = ['list', 'string'] (Optional)
        members = ['list', 'string'] (Optional)
        negate = bool (Optional)
        regions = ['list', 'string'] (Optional)
        required_access_levels = ['list', 'string'] (Optional)

        device_policy block "list" (Optional) {
          allowed_device_management_levels = ['list', 'string'] (Optional)
          allowed_encryption_statuses = ['list', 'string'] (Optional)
          require_admin_approval = bool (Optional)
          require_corp_owned = bool (Optional)
          require_screen_lock = bool (Optional)

          os_constraints block "list" (Optional) {
            os_type = string (Required)
            minimum_version = string (Optional)
          }
        }

        vpc_network_sources block "list" (Optional) {

          vpc_subnetwork block "list" (Optional) {
            network = string (Required)
            vpc_ip_subnetworks = ['list', 'string'] (Optional)
          }
        }
      }
    }

    custom block "list" (Optional) {

      expr block "list" (Required) {
        expression = string (Required)
        description = string (Optional)
        location = string (Optional)
        title = string (Optional)
      }
    }
  }

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    update = string (Optional)
  }
}
