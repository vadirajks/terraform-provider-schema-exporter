resource "azurerm_logic_app_standard" "name" {
  app_service_plan_id = string (Required)
  location = string (Required)
  name = string (Required)
  resource_group_name = string (Required)
  storage_account_access_key = string (Required)
  storage_account_name = string (Required)
  app_settings = ['map', 'string'] (Optional, Computed)
  bundle_version = string (Optional)
  client_affinity_enabled = bool (Optional, Computed)
  client_certificate_mode = string (Optional)
  custom_domain_verification_id = string (Computed)
  default_hostname = string (Computed)
  enabled = bool (Optional)
  ftp_publish_basic_authentication_enabled = bool (Optional)
  https_only = bool (Optional)
  id = string (Optional, Computed)
  kind = string (Computed)
  outbound_ip_addresses = string (Computed)
  possible_outbound_ip_addresses = string (Computed)
  public_network_access = string (Optional, Computed)
  scm_publish_basic_authentication_enabled = bool (Optional)
  site_credential = ['list', ['object', {'password': 'string', 'username': 'string'}]] (Computed)
  storage_account_share_name = string (Optional, Computed)
  tags = ['map', 'string'] (Optional)
  use_extension_bundle = bool (Optional)
  version = string (Optional)
  virtual_network_subnet_id = string (Optional)
  vnet_content_share_enabled = bool (Optional)

  connection_string block "set" (Optional) {
    name = string (Required)
    type = string (Required)
    value = string (Required)
  }

  identity block "list" (Optional) {
    type = string (Required)
    identity_ids = ['set', 'string'] (Optional)
    principal_id = string (Computed)
    tenant_id = string (Computed)
  }

  site_config block "list" (Optional) {
    always_on = bool (Optional)
    app_scale_limit = number (Optional, Computed)
    auto_swap_slot_name = string (Computed)
    dotnet_framework_version = string (Optional)
    elastic_instance_minimum = number (Optional, Computed)
    ftps_state = string (Optional, Computed)
    health_check_path = string (Optional)
    http2_enabled = bool (Optional)
    linux_fx_version = string (Optional, Computed)
    min_tls_version = string (Optional, Computed)
    pre_warmed_instance_count = number (Optional, Computed)
    public_network_access_enabled = bool (Optional, Computed)
    runtime_scale_monitoring_enabled = bool (Optional)
    scm_min_tls_version = string (Optional, Computed)
    scm_type = string (Optional, Computed)
    scm_use_main_ip_restriction = bool (Optional)
    use_32_bit_worker_process = bool (Optional)
    vnet_route_all_enabled = bool (Optional, Computed)
    websockets_enabled = bool (Optional)

    cors block "list" (Optional) {
      allowed_origins = ['set', 'string'] (Optional)
      support_credentials = bool (Optional)
    }

    ip_restriction block "list" (Optional) {
      action = string (Optional)
      description = string (Optional)
      headers = ['list', ['object', {'x_azure_fdid': ['list', 'string'], 'x_fd_health_probe': ['list', 'string'], 'x_forwarded_for': ['list', 'string'], 'x_forwarded_host': ['list', 'string']}]] (Optional)
      ip_address = string (Optional)
      name = string (Optional, Computed)
      priority = number (Optional)
      service_tag = string (Optional)
      virtual_network_subnet_id = string (Optional)
    }

    scm_ip_restriction block "list" (Optional) {
      action = string (Optional)
      description = string (Optional)
      headers = ['list', ['object', {'x_azure_fdid': ['list', 'string'], 'x_fd_health_probe': ['list', 'string'], 'x_forwarded_for': ['list', 'string'], 'x_forwarded_host': ['list', 'string']}]] (Optional)
      ip_address = string (Optional)
      name = string (Optional, Computed)
      priority = number (Optional)
      service_tag = string (Optional)
      virtual_network_subnet_id = string (Optional)
    }
  }

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    read = string (Optional)
    update = string (Optional)
  }
}
