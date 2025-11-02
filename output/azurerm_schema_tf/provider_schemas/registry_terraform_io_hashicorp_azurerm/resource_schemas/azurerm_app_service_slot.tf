resource "azurerm_app_service_slot" "name" {
  app_service_name = string (Required)
  app_service_plan_id = string (Required)
  location = string (Required)
  name = string (Required)
  resource_group_name = string (Required)
  app_settings = ['map', 'string'] (Optional, Computed)
  client_affinity_enabled = bool (Optional, Computed)
  default_site_hostname = string (Computed)
  enabled = bool (Optional)
  https_only = bool (Optional)
  id = string (Optional, Computed)
  key_vault_reference_identity_id = string (Optional, Computed)
  site_credential = ['list', ['object', {'password': 'string', 'username': 'string'}]] (Computed)
  tags = ['map', 'string'] (Optional)

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

  logs block "list" (Optional) {
    detailed_error_messages_enabled = bool (Optional)
    failed_request_tracing_enabled = bool (Optional)

    application_logs block "list" (Optional) {
      file_system_level = string (Optional)

      azure_blob_storage block "list" (Optional) {
        level = string (Required)
        retention_in_days = number (Required)
        sas_url = string (Required)
      }
    }

    http_logs block "list" (Optional) {

      azure_blob_storage block "list" (Optional) {
        retention_in_days = number (Required)
        sas_url = string (Required)
      }

      file_system block "list" (Optional) {
        retention_in_days = number (Required)
        retention_in_mb = number (Required)
      }
    }
  }

  site_config block "list" (Optional) {
    acr_use_managed_identity_credentials = bool (Optional)
    acr_user_managed_identity_client_id = string (Optional)
    always_on = bool (Optional)
    app_command_line = string (Optional)
    auto_swap_slot_name = string (Optional)
    default_documents = ['list', 'string'] (Optional)
    dotnet_framework_version = string (Optional)
    ftps_state = string (Optional, Computed)
    health_check_path = string (Optional)
    http2_enabled = bool (Optional)
    ip_restriction = ['list', ['object', {'action': 'string', 'headers': ['list', ['object', {'x_azure_fdid': ['set', 'string'], 'x_fd_health_probe': ['set', 'string'], 'x_forwarded_for': ['set', 'string'], 'x_forwarded_host': ['set', 'string']}]], 'ip_address': 'string', 'name': 'string', 'priority': 'number', 'service_tag': 'string', 'virtual_network_subnet_id': 'string'}]] (Optional, Computed)
    java_container = string (Optional)
    java_container_version = string (Optional)
    java_version = string (Optional)
    linux_fx_version = string (Optional, Computed)
    local_mysql_enabled = bool (Optional, Computed)
    managed_pipeline_mode = string (Optional, Computed)
    min_tls_version = string (Optional, Computed)
    number_of_workers = number (Optional, Computed)
    php_version = string (Optional)
    python_version = string (Optional)
    remote_debugging_enabled = bool (Optional)
    remote_debugging_version = string (Optional, Computed)
    scm_ip_restriction = ['list', ['object', {'action': 'string', 'headers': ['list', ['object', {'x_azure_fdid': ['set', 'string'], 'x_fd_health_probe': ['set', 'string'], 'x_forwarded_for': ['set', 'string'], 'x_forwarded_host': ['set', 'string']}]], 'ip_address': 'string', 'name': 'string', 'priority': 'number', 'service_tag': 'string', 'virtual_network_subnet_id': 'string'}]] (Optional, Computed)
    scm_type = string (Optional, Computed)
    scm_use_main_ip_restriction = bool (Optional)
    use_32_bit_worker_process = bool (Optional)
    vnet_route_all_enabled = bool (Optional, Computed)
    websockets_enabled = bool (Optional, Computed)
    windows_fx_version = string (Optional, Computed)

    cors block "list" (Optional) {
      allowed_origins = ['set', 'string'] (Required)
      support_credentials = bool (Optional)
    }
  }

  storage_account block "set" (Optional) {
    access_key = string (Required)
    account_name = string (Required)
    name = string (Required)
    share_name = string (Required)
    type = string (Required)
    mount_path = string (Optional)
  }

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    read = string (Optional)
    update = string (Optional)
  }
}
