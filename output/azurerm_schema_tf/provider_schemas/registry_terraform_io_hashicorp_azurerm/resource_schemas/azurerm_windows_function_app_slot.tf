resource "azurerm_windows_function_app_slot" "name" {
  function_app_id = string (Required)
  name = string (Required)
  app_settings = ['map', 'string'] (Optional)
  builtin_logging_enabled = bool (Optional)
  client_certificate_enabled = bool (Optional)
  client_certificate_exclusion_paths = string (Optional)
  client_certificate_mode = string (Optional)
  content_share_force_disabled = bool (Optional)
  custom_domain_verification_id = string (Computed)
  daily_memory_time_quota = number (Optional)
  default_hostname = string (Computed)
  enabled = bool (Optional)
  ftp_publish_basic_authentication_enabled = bool (Optional)
  functions_extension_version = string (Optional)
  hosting_environment_id = string (Computed)
  https_only = bool (Optional)
  id = string (Optional, Computed)
  key_vault_reference_identity_id = string (Optional, Computed)
  kind = string (Computed)
  outbound_ip_address_list = ['list', 'string'] (Computed)
  outbound_ip_addresses = string (Computed)
  possible_outbound_ip_address_list = ['list', 'string'] (Computed)
  possible_outbound_ip_addresses = string (Computed)
  public_network_access_enabled = bool (Optional)
  service_plan_id = string (Optional)
  site_credential = ['list', ['object', {'name': 'string', 'password': 'string'}]] (Computed)
  storage_account_access_key = string (Optional)
  storage_account_name = string (Optional)
  storage_key_vault_secret_id = string (Optional)
  storage_uses_managed_identity = bool (Optional)
  tags = ['map', 'string'] (Optional)
  virtual_network_backup_restore_enabled = bool (Optional)
  virtual_network_subnet_id = string (Optional)
  vnet_image_pull_enabled = bool (Optional)
  webdeploy_publish_basic_authentication_enabled = bool (Optional)

  auth_settings block "list" (Optional) {
    enabled = bool (Required)
    additional_login_parameters = ['map', 'string'] (Optional)
    allowed_external_redirect_urls = ['list', 'string'] (Optional, Computed)
    default_provider = string (Optional, Computed)
    issuer = string (Optional)
    runtime_version = string (Optional, Computed)
    token_refresh_extension_hours = number (Optional)
    token_store_enabled = bool (Optional)
    unauthenticated_client_action = string (Optional, Computed)

    active_directory block "list" (Optional) {
      client_id = string (Required)
      allowed_audiences = ['list', 'string'] (Optional)
      client_secret = string (Optional)
      client_secret_setting_name = string (Optional)
    }

    facebook block "list" (Optional) {
      app_id = string (Required)
      app_secret = string (Optional)
      app_secret_setting_name = string (Optional)
      oauth_scopes = ['list', 'string'] (Optional)
    }

    github block "list" (Optional) {
      client_id = string (Required)
      client_secret = string (Optional)
      client_secret_setting_name = string (Optional)
      oauth_scopes = ['list', 'string'] (Optional)
    }

    google block "list" (Optional) {
      client_id = string (Required)
      client_secret = string (Optional)
      client_secret_setting_name = string (Optional)
      oauth_scopes = ['list', 'string'] (Optional)
    }

    microsoft block "list" (Optional) {
      client_id = string (Required)
      client_secret = string (Optional)
      client_secret_setting_name = string (Optional)
      oauth_scopes = ['list', 'string'] (Optional)
    }

    twitter block "list" (Optional) {
      consumer_key = string (Required)
      consumer_secret = string (Optional)
      consumer_secret_setting_name = string (Optional)
    }
  }

  auth_settings_v2 block "list" (Optional) {
    auth_enabled = bool (Optional)
    config_file_path = string (Optional)
    default_provider = string (Optional)
    excluded_paths = ['list', 'string'] (Optional)
    forward_proxy_convention = string (Optional)
    forward_proxy_custom_host_header_name = string (Optional)
    forward_proxy_custom_scheme_header_name = string (Optional)
    http_route_api_prefix = string (Optional)
    require_authentication = bool (Optional)
    require_https = bool (Optional)
    runtime_version = string (Optional)
    unauthenticated_action = string (Optional)

    active_directory_v2 block "list" (Optional) {
      client_id = string (Required)
      tenant_auth_endpoint = string (Required)
      allowed_applications = ['list', 'string'] (Optional)
      allowed_audiences = ['list', 'string'] (Optional)
      allowed_groups = ['list', 'string'] (Optional)
      allowed_identities = ['list', 'string'] (Optional)
      client_secret_certificate_thumbprint = string (Optional)
      client_secret_setting_name = string (Optional)
      jwt_allowed_client_applications = ['list', 'string'] (Optional)
      jwt_allowed_groups = ['list', 'string'] (Optional)
      login_parameters = ['map', 'string'] (Optional)
      www_authentication_disabled = bool (Optional)
    }

    apple_v2 block "list" (Optional) {
      client_id = string (Required)
      client_secret_setting_name = string (Required)
      login_scopes = ['list', 'string'] (Computed)
    }

    azure_static_web_app_v2 block "list" (Optional) {
      client_id = string (Required)
    }

    custom_oidc_v2 block "list" (Optional) {
      client_id = string (Required)
      name = string (Required)
      openid_configuration_endpoint = string (Required)
      authorisation_endpoint = string (Computed)
      certification_uri = string (Computed)
      client_credential_method = string (Computed)
      client_secret_setting_name = string (Computed)
      issuer_endpoint = string (Computed)
      name_claim_type = string (Optional)
      scopes = ['list', 'string'] (Optional)
      token_endpoint = string (Computed)
    }

    facebook_v2 block "list" (Optional) {
      app_id = string (Required)
      app_secret_setting_name = string (Required)
      graph_api_version = string (Optional, Computed)
      login_scopes = ['list', 'string'] (Optional)
    }

    github_v2 block "list" (Optional) {
      client_id = string (Required)
      client_secret_setting_name = string (Required)
      login_scopes = ['list', 'string'] (Optional)
    }

    google_v2 block "list" (Optional) {
      client_id = string (Required)
      client_secret_setting_name = string (Required)
      allowed_audiences = ['list', 'string'] (Optional)
      login_scopes = ['list', 'string'] (Optional)
    }

    login block "list" (Required) {
      allowed_external_redirect_urls = ['list', 'string'] (Optional)
      cookie_expiration_convention = string (Optional)
      cookie_expiration_time = string (Optional)
      logout_endpoint = string (Optional)
      nonce_expiration_time = string (Optional)
      preserve_url_fragments_for_logins = bool (Optional)
      token_refresh_extension_time = number (Optional)
      token_store_enabled = bool (Optional)
      token_store_path = string (Optional)
      token_store_sas_setting_name = string (Optional)
      validate_nonce = bool (Optional)
    }

    microsoft_v2 block "list" (Optional) {
      client_id = string (Required)
      client_secret_setting_name = string (Required)
      allowed_audiences = ['list', 'string'] (Optional)
      login_scopes = ['list', 'string'] (Optional)
    }

    twitter_v2 block "list" (Optional) {
      consumer_key = string (Required)
      consumer_secret_setting_name = string (Required)
    }
  }

  backup block "list" (Optional) {
    name = string (Required)
    storage_account_url = string (Required)
    enabled = bool (Optional)

    schedule block "list" (Required) {
      frequency_interval = number (Required)
      frequency_unit = string (Required)
      keep_at_least_one_backup = bool (Optional)
      last_execution_time = string (Computed)
      retention_period_days = number (Optional)
      start_time = string (Optional, Computed)
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

  site_config block "list" (Required) {
    always_on = bool (Optional, Computed)
    api_definition_url = string (Optional)
    api_management_api_id = string (Optional)
    app_command_line = string (Optional)
    app_scale_limit = number (Optional, Computed)
    application_insights_connection_string = string (Optional)
    application_insights_key = string (Optional)
    auto_swap_slot_name = string (Optional)
    default_documents = ['list', 'string'] (Optional, Computed)
    detailed_error_logging_enabled = bool (Computed)
    elastic_instance_minimum = number (Optional, Computed)
    ftps_state = string (Optional)
    health_check_eviction_time_in_min = number (Optional)
    health_check_path = string (Optional)
    http2_enabled = bool (Optional)
    ip_restriction_default_action = string (Optional)
    load_balancing_mode = string (Optional)
    managed_pipeline_mode = string (Optional)
    minimum_tls_version = string (Optional)
    pre_warmed_instance_count = number (Optional, Computed)
    remote_debugging_enabled = bool (Optional)
    remote_debugging_version = string (Optional, Computed)
    runtime_scale_monitoring_enabled = bool (Optional)
    scm_ip_restriction_default_action = string (Optional)
    scm_minimum_tls_version = string (Optional)
    scm_type = string (Computed)
    scm_use_main_ip_restriction = bool (Optional)
    use_32_bit_worker = bool (Optional)
    vnet_route_all_enabled = bool (Optional)
    websockets_enabled = bool (Optional)
    windows_fx_version = string (Computed)
    worker_count = number (Optional, Computed)

    app_service_logs block "list" (Optional) {
      disk_quota_mb = number (Optional)
      retention_period_days = number (Optional)
    }

    application_stack block "list" (Optional) {
      dotnet_version = string (Optional)
      java_version = string (Optional)
      node_version = string (Optional)
      powershell_core_version = string (Optional)
      use_custom_runtime = bool (Optional, Computed)
      use_dotnet_isolated_runtime = bool (Optional, Computed)
    }

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
