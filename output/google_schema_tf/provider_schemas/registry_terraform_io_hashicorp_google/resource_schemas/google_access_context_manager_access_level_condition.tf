resource "google_access_context_manager_access_level_condition" "name" {
  access_level = string (Required)
  access_policy_id = string (Computed)
  id = string (Optional, Computed)
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

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
  }

  vpc_network_sources block "list" (Optional) {

    vpc_subnetwork block "list" (Optional) {
      network = string (Required)
      vpc_ip_subnetworks = ['list', 'string'] (Optional)
    }
  }
}
