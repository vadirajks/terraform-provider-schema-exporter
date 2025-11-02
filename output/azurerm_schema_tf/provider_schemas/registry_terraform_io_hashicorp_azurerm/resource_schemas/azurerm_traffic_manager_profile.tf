resource "azurerm_traffic_manager_profile" "name" {
  name = string (Required)
  resource_group_name = string (Required)
  traffic_routing_method = string (Required)
  fqdn = string (Computed)
  id = string (Optional, Computed)
  max_return = number (Optional)
  profile_status = string (Optional)
  tags = ['map', 'string'] (Optional)
  traffic_view_enabled = bool (Optional)

  dns_config block "list" (Required) {
    relative_name = string (Required)
    ttl = number (Required)
  }

  monitor_config block "list" (Required) {
    port = number (Required)
    protocol = string (Required)
    expected_status_code_ranges = ['list', 'string'] (Optional)
    interval_in_seconds = number (Optional)
    path = string (Optional)
    timeout_in_seconds = number (Optional)
    tolerated_number_of_failures = number (Optional)

    custom_header block "list" (Optional) {
      name = string (Required)
      value = string (Required)
    }
  }

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    read = string (Optional)
    update = string (Optional)
  }
}
