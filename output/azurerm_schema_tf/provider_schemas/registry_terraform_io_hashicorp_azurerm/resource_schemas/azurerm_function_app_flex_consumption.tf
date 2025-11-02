resource "azurerm_function_app_flex_consumption" "name" {
  location = string (Required)
  name = string (Required)
  resource_group_name = string (Required)
  runtime_name = string (Required)
  runtime_version = string (Required)
  service_plan_id = string (Required)
  storage_authentication_type = string (Required)
  storage_container_endpoint = string (Required)
  storage_container_type = string (Required)
  app_settings = ['map', 'string'] (Optional)
  client_certificate_enabled = bool (Optional)
  client_certificate_exclusion_paths = string (Optional)
  client_certificate_mode = string (Optional)
  custom_domain_verification_id = string (Computed)
  default_hostname = string (Computed)
  enabled = bool (Optional)
  hosting_environment_id = string (Computed)
  http_concurrency = number (Optional)
  https_only = bool (Optional)
  id = string (Optional, Computed)
  instance_memory_in_mb = number (Optional)
  kind = string (Computed)
  maximum_instance_count = number (Optional)
  outbound_ip_address_list = ['list', 'string'] (Computed)
  outbound_ip_addresses = string (Computed)
  possible_outbound_ip_address_list = ['list', 'string'] (Computed)
  possible_outbound_ip_addresses = string (Computed)
  public_network_access_enabled = bool (Optional)
  site_credential = ['list', ['object', {'name': 'string', 'password': 'string'}]] (Computed)
  storage_access_key = string (Optional)
  storage_user_assigned_identity_id = string (Optional)
  tags = ['map', 'string'] (Optional)
  virtual_network_subnet_id = string (Optional)
  webdeploy_publish_basic_authentication_enabled = bool (Optional)
  zip_deploy_file = string (Optional, Computed)

  always_ready block "list" (Optional) {
    name = string (Required)
    instance_count = number (Optional)
  }

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
    api_definition_url = string (Optional)
    api_management_api_id = string (Optional)
    app_command_line = string (Optional)
    application_insights_connection_string = string (Optional)
    application_insights_key = string (Optional)
    container_registry_managed_identity_client_id = string (Optional)
    container_registry_use_managed_identity = bool (Optional)
    default_documents = ['list', 'string'] (Optional, Computed)
    detailed_error_logging_enabled = bool (Computed)
    elastic_instance_minimum = number (Optional, Computed)
    health_check_eviction_time_in_min = number (Optional)
    health_check_path = string (Optional)
    http2_enabled = bool (Optional)
    ip_restriction_default_action = string (Optional)
    load_balancing_mode = string (Optional)
    managed_pipeline_mode = string (Optional)
    minimum_tls_version = string (Optional)
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
    worker_count = number (Optional, Computed)

    app_service_logs block "list" (Optional) {
      disk_quota_mb = number (Optional)
      retention_period_days = number (Optional)
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

  sticky_settings block "list" (Optional) {
    app_setting_names = ['list', 'string'] (Optional)
    connection_string_names = ['list', 'string'] (Optional)
  }

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    read = string (Optional)
    update = string (Optional)
  }
}
