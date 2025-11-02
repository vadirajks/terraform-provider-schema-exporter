resource "azurerm_spring_cloud_service" "name" {
  location = string (Required)
  name = string (Required)
  resource_group_name = string (Required)
  build_agent_pool_size = string (Optional)
  id = string (Optional, Computed)
  log_stream_public_endpoint_enabled = bool (Optional)
  managed_environment_id = string (Optional)
  outbound_public_ip_addresses = ['list', 'string'] (Computed)
  required_network_traffic_rules = ['list', ['object', {'direction': 'string', 'fqdns': ['list', 'string'], 'ip_addresses': ['list', 'string'], 'port': 'number', 'protocol': 'string'}]] (Computed)
  service_registry_enabled = bool (Optional)
  service_registry_id = string (Computed)
  sku_name = string (Optional)
  sku_tier = string (Optional, Computed)
  tags = ['map', 'string'] (Optional)
  zone_redundant = bool (Optional)

  config_server_git_setting block "list" (Optional) {
    uri = string (Required)
    label = string (Optional)
    search_paths = ['list', 'string'] (Optional)

    http_basic_auth block "list" (Optional) {
      password = string (Required)
      username = string (Required)
    }

    repository block "list" (Optional) {
      name = string (Required)
      uri = string (Required)
      label = string (Optional)
      pattern = ['list', 'string'] (Optional)
      search_paths = ['list', 'string'] (Optional)

      http_basic_auth block "list" (Optional) {
        password = string (Required)
        username = string (Required)
      }

      ssh_auth block "list" (Optional) {
        private_key = string (Required)
        host_key = string (Optional)
        host_key_algorithm = string (Optional)
        strict_host_key_checking_enabled = bool (Optional)
      }
    }

    ssh_auth block "list" (Optional) {
      private_key = string (Required)
      host_key = string (Optional)
      host_key_algorithm = string (Optional)
      strict_host_key_checking_enabled = bool (Optional)
    }
  }

  container_registry block "list" (Optional) {
    name = string (Required)
    password = string (Required)
    server = string (Required)
    username = string (Required)
  }

  default_build_service block "list" (Optional) {
    container_registry_name = string (Optional)
  }

  marketplace block "list" (Optional) {
    plan = string (Required)
    product = string (Required)
    publisher = string (Required)
  }

  network block "list" (Optional) {
    app_subnet_id = string (Required)
    cidr_ranges = ['list', 'string'] (Required)
    service_runtime_subnet_id = string (Required)
    app_network_resource_group = string (Optional, Computed)
    outbound_type = string (Optional)
    read_timeout_seconds = number (Optional)
    service_runtime_network_resource_group = string (Optional, Computed)
  }

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    read = string (Optional)
    update = string (Optional)
  }

  trace block "list" (Optional) {
    connection_string = string (Optional)
    sample_rate = number (Optional)
  }
}
