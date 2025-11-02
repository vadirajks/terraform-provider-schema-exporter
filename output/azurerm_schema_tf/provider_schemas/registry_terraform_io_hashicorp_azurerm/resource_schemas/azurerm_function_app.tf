resource "azurerm_function_app" "name" {
  app_service_plan_id = string (Required)
  location = string (Required)
  name = string (Required)
  resource_group_name = string (Required)
  storage_account_access_key = string (Required)
  storage_account_name = string (Required)
  app_settings = ['map', 'string'] (Optional, Computed)
  client_cert_mode = string (Optional)
  custom_domain_verification_id = string (Computed)
  daily_memory_time_quota = number (Optional)
  default_hostname = string (Computed)
  enable_builtin_logging = bool (Optional)
  enabled = bool (Optional)
  https_only = bool (Optional)
  id = string (Optional, Computed)
  key_vault_reference_identity_id = string (Optional, Computed)
  kind = string (Computed)
  os_type = string (Optional)
  outbound_ip_addresses = string (Computed)
  possible_outbound_ip_addresses = string (Computed)
  site_credential = ['list', ['object', {'password': 'string', 'username': 'string'}]] (Computed)
  tags = ['map', 'string'] (Optional)
  version = string (Optional)

  auth_settings block "list" (Optional) {
    enabled = bool (Required)
    additional_login_params = ['map', 'string'] (Optional)
    allowed_external_redirect_urls = ['list', 'string'] (Optional)
    default_provider = string (Optional)
    issuer = string (Optional)
    runtime_version = string (Optional)
    token_refresh_extension_hours = number (Optional)
    token_store_enabled = bool (Optional)
    unauthenticated_client_action = string (Optional)

    active_directory block "list" (Optional) {
      client_id = string (Required)
      allowed_audiences = ['list', 'string'] (Optional)
      client_secret = string (Optional)
    }

    facebook block "list" (Optional) {
      app_id = string (Required)
      app_secret = string (Required)
      oauth_scopes = ['list', 'string'] (Optional)
    }

    google block "list" (Optional) {
      client_id = string (Required)
      client_secret = string (Required)
      oauth_scopes = ['list', 'string'] (Optional)
    }

    microsoft block "list" (Optional) {
      client_id = string (Required)
      client_secret = string (Required)
      oauth_scopes = ['list', 'string'] (Optional)
    }

    twitter block "list" (Optional) {
      consumer_key = string (Required)
      consumer_secret = string (Required)
    }
  }

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
    auto_swap_slot_name = string (Optional)
    dotnet_framework_version = string (Optional)
    elastic_instance_minimum = number (Optional, Computed)
    ftps_state = string (Optional, Computed)
    health_check_path = string (Optional)
    http2_enabled = bool (Optional)
    ip_restriction = ['list', ['object', {'action': 'string', 'headers': ['list', ['object', {'x_azure_fdid': ['set', 'string'], 'x_fd_health_probe': ['set', 'string'], 'x_forwarded_for': ['set', 'string'], 'x_forwarded_host': ['set', 'string']}]], 'ip_address': 'string', 'name': 'string', 'priority': 'number', 'service_tag': 'string', 'virtual_network_subnet_id': 'string'}]] (Optional, Computed)
    java_version = string (Optional)
    linux_fx_version = string (Optional, Computed)
    min_tls_version = string (Optional, Computed)
    pre_warmed_instance_count = number (Optional, Computed)
    runtime_scale_monitoring_enabled = bool (Optional)
    scm_ip_restriction = ['list', ['object', {'action': 'string', 'headers': ['list', ['object', {'x_azure_fdid': ['set', 'string'], 'x_fd_health_probe': ['set', 'string'], 'x_forwarded_for': ['set', 'string'], 'x_forwarded_host': ['set', 'string']}]], 'ip_address': 'string', 'name': 'string', 'priority': 'number', 'service_tag': 'string', 'virtual_network_subnet_id': 'string'}]] (Optional, Computed)
    scm_type = string (Optional, Computed)
    scm_use_main_ip_restriction = bool (Optional)
    use_32_bit_worker_process = bool (Optional)
    vnet_route_all_enabled = bool (Optional, Computed)
    websockets_enabled = bool (Optional)

    cors block "list" (Optional) {
      allowed_origins = ['set', 'string'] (Required)
      support_credentials = bool (Optional)
    }
  }

  source_control block "list" (Optional) {
    branch = string (Optional, Computed)
    manual_integration = bool (Optional, Computed)
    repo_url = string (Optional, Computed)
    rollback_enabled = bool (Optional, Computed)
    use_mercurial = bool (Optional, Computed)
  }

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    read = string (Optional)
    update = string (Optional)
  }
}
