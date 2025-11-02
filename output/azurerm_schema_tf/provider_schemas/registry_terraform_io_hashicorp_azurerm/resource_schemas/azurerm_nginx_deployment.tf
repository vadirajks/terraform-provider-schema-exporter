resource "azurerm_nginx_deployment" "name" {
  location = string (Required)
  name = string (Required)
  resource_group_name = string (Required)
  sku = string (Required)
  automatic_upgrade_channel = string (Optional)
  capacity = number (Optional)
  dataplane_api_endpoint = string (Computed)
  diagnose_support_enabled = bool (Optional)
  email = string (Optional)
  id = string (Optional, Computed)
  ip_address = string (Computed)
  managed_resource_group = string (Optional, Computed)
  nginx_version = string (Computed)
  tags = ['map', 'string'] (Optional)

  auto_scale_profile block "list" (Optional) {
    max_capacity = number (Required)
    min_capacity = number (Required)
    name = string (Required)
  }

  frontend_private block "list" (Optional) {
    allocation_method = string (Required)
    ip_address = string (Required)
    subnet_id = string (Required)
  }

  frontend_public block "list" (Optional) {
    ip_address = ['list', 'string'] (Optional)
  }

  identity block "list" (Optional) {
    type = string (Required)
    identity_ids = ['set', 'string'] (Optional)
    principal_id = string (Computed)
    tenant_id = string (Computed)
  }

  logging_storage_account block "list" (Optional) {
    container_name = string (Optional)
    name = string (Optional)
  }

  network_interface block "list" (Optional) {
    subnet_id = string (Required)
  }

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    read = string (Optional)
    update = string (Optional)
  }

  web_application_firewall block "list" (Optional) {
    activation_state_enabled = bool (Required)
    status = ['list', ['object', {'attack_signatures_package': ['list', ['object', {'revision_datetime': 'string', 'version': 'string'}]], 'bot_signatures_package': ['list', ['object', {'revision_datetime': 'string', 'version': 'string'}]], 'component_versions': ['list', ['object', {'waf_engine_version': 'string', 'waf_nginx_version': 'string'}]], 'threat_campaigns_package': ['list', ['object', {'revision_datetime': 'string', 'version': 'string'}]]}]] (Computed)
  }
}
