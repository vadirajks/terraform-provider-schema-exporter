data "azurerm_traffic_manager_profile" "name" {
  name = string (Required)
  resource_group_name = string (Required)
  dns_config = ['list', ['object', {'relative_name': 'string', 'ttl': 'number'}]] (Computed)
  fqdn = string (Computed)
  id = string (Optional, Computed)
  monitor_config = ['list', ['object', {'custom_header': ['list', ['object', {'name': 'string', 'value': 'string'}]], 'expected_status_code_ranges': ['list', 'string'], 'interval_in_seconds': 'number', 'path': 'string', 'port': 'number', 'protocol': 'string', 'timeout_in_seconds': 'number', 'tolerated_number_of_failures': 'number'}]] (Computed)
  profile_status = string (Computed)
  tags = ['map', 'string'] (Optional)
  traffic_routing_method = string (Computed)
  traffic_view_enabled = bool (Optional)

  timeouts block "single" (Optional) {
    read = string (Optional)
  }
}
