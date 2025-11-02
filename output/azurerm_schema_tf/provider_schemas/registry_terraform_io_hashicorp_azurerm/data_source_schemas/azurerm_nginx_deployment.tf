data "azurerm_nginx_deployment" "name" {
  name = string (Required)
  resource_group_name = string (Required)
  auto_scale_profile = ['list', ['object', {'max_capacity': 'number', 'min_capacity': 'number', 'name': 'string'}]] (Computed)
  automatic_upgrade_channel = string (Computed)
  capacity = number (Computed)
  dataplane_api_endpoint = string (Computed)
  diagnose_support_enabled = bool (Computed)
  email = string (Computed)
  frontend_private = ['list', ['object', {'allocation_method': 'string', 'ip_address': 'string', 'subnet_id': 'string'}]] (Computed)
  frontend_public = ['list', ['object', {'ip_address': ['list', 'string']}]] (Computed)
  id = string (Optional, Computed)
  identity = ['list', ['object', {'identity_ids': ['list', 'string'], 'principal_id': 'string', 'tenant_id': 'string', 'type': 'string'}]] (Computed)
  ip_address = string (Computed)
  location = string (Computed)
  logging_storage_account = ['list', ['object', {'container_name': 'string', 'name': 'string'}]] (Computed)
  managed_resource_group = string (Computed)
  network_interface = ['list', ['object', {'subnet_id': 'string'}]] (Computed)
  nginx_version = string (Computed)
  sku = string (Computed)
  tags = ['map', 'string'] (Computed)
  web_application_firewall = ['list', ['object', {'activation_state_enabled': 'bool', 'status': ['list', ['object', {'attack_signatures_package': ['list', ['object', {'revision_datetime': 'string', 'version': 'string'}]], 'bot_signatures_package': ['list', ['object', {'revision_datetime': 'string', 'version': 'string'}]], 'component_versions': ['list', ['object', {'waf_engine_version': 'string', 'waf_nginx_version': 'string'}]], 'threat_campaigns_package': ['list', ['object', {'revision_datetime': 'string', 'version': 'string'}]]}]]}]] (Computed)

  timeouts block "single" (Optional) {
    read = string (Optional)
  }
}
