data "azurerm_spring_cloud_service" "name" {
  name = string (Required)
  resource_group_name = string (Required)
  config_server_git_setting = ['list', ['object', {'http_basic_auth': ['list', ['object', {'password': 'string', 'username': 'string'}]], 'label': 'string', 'repository': ['list', ['object', {'http_basic_auth': ['list', ['object', {'password': 'string', 'username': 'string'}]], 'label': 'string', 'name': 'string', 'pattern': ['list', 'string'], 'search_paths': ['list', 'string'], 'ssh_auth': ['list', ['object', {'host_key': 'string', 'host_key_algorithm': 'string', 'private_key': 'string', 'strict_host_key_checking_enabled': 'bool'}]], 'uri': 'string'}]], 'search_paths': ['list', 'string'], 'ssh_auth': ['list', ['object', {'host_key': 'string', 'host_key_algorithm': 'string', 'private_key': 'string', 'strict_host_key_checking_enabled': 'bool'}]], 'uri': 'string'}]] (Computed)
  id = string (Optional, Computed)
  location = string (Computed)
  outbound_public_ip_addresses = ['list', 'string'] (Computed)
  required_network_traffic_rules = ['list', ['object', {'direction': 'string', 'fqdns': ['list', 'string'], 'ip_addresses': ['list', 'string'], 'port': 'number', 'protocol': 'string'}]] (Computed)
  tags = ['map', 'string'] (Computed)

  timeouts block "single" (Optional) {
    read = string (Optional)
  }
}
