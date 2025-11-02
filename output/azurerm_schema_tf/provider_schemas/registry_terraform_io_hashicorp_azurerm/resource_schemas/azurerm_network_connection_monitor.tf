resource "azurerm_network_connection_monitor" "name" {
  location = string (Required)
  name = string (Required)
  network_watcher_id = string (Required)
  id = string (Optional, Computed)
  notes = string (Optional)
  output_workspace_resource_ids = ['set', 'string'] (Optional)
  tags = ['map', 'string'] (Optional)

  endpoint block "set" (Required) {
    name = string (Required)
    address = string (Optional)
    coverage_level = string (Optional)
    excluded_ip_addresses = ['set', 'string'] (Optional)
    included_ip_addresses = ['set', 'string'] (Optional)
    target_resource_id = string (Optional)
    target_resource_type = string (Optional)

    filter block "list" (Optional) {
      type = string (Optional)

      item block "set" (Optional) {
        address = string (Optional)
        type = string (Optional)
      }
    }
  }

  test_configuration block "set" (Required) {
    name = string (Required)
    protocol = string (Required)
    preferred_ip_version = string (Optional)
    test_frequency_in_seconds = number (Optional)

    http_configuration block "list" (Optional) {
      method = string (Optional)
      path = string (Optional)
      port = number (Optional)
      prefer_https = bool (Optional)
      valid_status_code_ranges = ['set', 'string'] (Optional)

      request_header block "set" (Optional) {
        name = string (Required)
        value = string (Required)
      }
    }

    icmp_configuration block "list" (Optional) {
      trace_route_enabled = bool (Optional)
    }

    success_threshold block "list" (Optional) {
      checks_failed_percent = number (Optional)
      round_trip_time_ms = number (Optional)
    }

    tcp_configuration block "list" (Optional) {
      port = number (Required)
      destination_port_behavior = string (Optional)
      trace_route_enabled = bool (Optional)
    }
  }

  test_group block "set" (Required) {
    destination_endpoints = ['set', 'string'] (Required)
    name = string (Required)
    source_endpoints = ['set', 'string'] (Required)
    test_configuration_names = ['set', 'string'] (Required)
    enabled = bool (Optional)
  }

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    read = string (Optional)
    update = string (Optional)
  }
}
