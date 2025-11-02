data "azurerm_app_service" "name" {
  name = string (Required)
  resource_group_name = string (Required)
  app_service_plan_id = string (Computed)
  app_settings = ['map', 'string'] (Computed)
  client_affinity_enabled = bool (Computed)
  client_cert_enabled = bool (Computed)
  connection_string = ['list', ['object', {'name': 'string', 'type': 'string', 'value': 'string'}]] (Computed)
  custom_domain_verification_id = string (Computed)
  default_site_hostname = string (Computed)
  enabled = bool (Computed)
  https_only = bool (Computed)
  id = string (Optional, Computed)
  location = string (Computed)
  outbound_ip_address_list = ['list', 'string'] (Computed)
  outbound_ip_addresses = string (Computed)
  possible_outbound_ip_address_list = ['list', 'string'] (Computed)
  possible_outbound_ip_addresses = string (Computed)
  site_config = ['list', ['object', {'acr_use_managed_identity_credentials': 'bool', 'acr_user_managed_identity_client_id': 'string', 'always_on': 'bool', 'app_command_line': 'string', 'cors': ['list', ['object', {'allowed_origins': ['set', 'string'], 'support_credentials': 'bool'}]], 'default_documents': ['list', 'string'], 'dotnet_framework_version': 'string', 'ftps_state': 'string', 'health_check_path': 'string', 'http2_enabled': 'bool', 'ip_restriction': ['list', ['object', {'action': 'string', 'headers': ['list', ['object', {'x_azure_fdid': ['set', 'string'], 'x_fd_health_probe': ['set', 'string'], 'x_forwarded_for': ['set', 'string'], 'x_forwarded_host': ['set', 'string']}]], 'ip_address': 'string', 'name': 'string', 'priority': 'number', 'service_tag': 'string', 'virtual_network_subnet_id': 'string'}]], 'java_container': 'string', 'java_container_version': 'string', 'java_version': 'string', 'linux_fx_version': 'string', 'local_mysql_enabled': 'bool', 'managed_pipeline_mode': 'string', 'min_tls_version': 'string', 'number_of_workers': 'number', 'php_version': 'string', 'python_version': 'string', 'remote_debugging_enabled': 'bool', 'remote_debugging_version': 'string', 'scm_ip_restriction': ['list', ['object', {'action': 'string', 'headers': ['list', ['object', {'x_azure_fdid': ['set', 'string'], 'x_fd_health_probe': ['set', 'string'], 'x_forwarded_for': ['set', 'string'], 'x_forwarded_host': ['set', 'string']}]], 'ip_address': 'string', 'name': 'string', 'priority': 'number', 'service_tag': 'string', 'virtual_network_subnet_id': 'string'}]], 'scm_type': 'string', 'scm_use_main_ip_restriction': 'bool', 'use_32_bit_worker_process': 'bool', 'vnet_route_all_enabled': 'bool', 'websockets_enabled': 'bool', 'windows_fx_version': 'string'}]] (Computed)
  site_credential = ['list', ['object', {'password': 'string', 'username': 'string'}]] (Computed)
  source_control = ['list', ['object', {'branch': 'string', 'manual_integration': 'bool', 'repo_url': 'string', 'rollback_enabled': 'bool', 'use_mercurial': 'bool'}]] (Computed)
  tags = ['map', 'string'] (Computed)

  timeouts block "single" (Optional) {
    read = string (Optional)
  }
}
