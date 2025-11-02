resource "azurerm_application_gateway" "name" {
  location = string (Required)
  name = string (Required)
  resource_group_name = string (Required)
  enable_http2 = bool (Optional)
  fips_enabled = bool (Optional)
  firewall_policy_id = string (Optional)
  force_firewall_policy_association = bool (Optional)
  id = string (Optional, Computed)
  private_endpoint_connection = ['set', ['object', {'id': 'string', 'name': 'string'}]] (Computed)
  tags = ['map', 'string'] (Optional)
  zones = ['set', 'string'] (Optional)

  authentication_certificate block "list" (Optional) {
    data = string (Required)
    name = string (Required)
    id = string (Computed)
  }

  autoscale_configuration block "list" (Optional) {
    min_capacity = number (Required)
    max_capacity = number (Optional)
  }

  backend_address_pool block "set" (Required) {
    name = string (Required)
    fqdns = ['set', 'string'] (Optional)
    id = string (Computed)
    ip_addresses = ['set', 'string'] (Optional)
  }

  backend_http_settings block "set" (Required) {
    cookie_based_affinity = string (Required)
    name = string (Required)
    port = number (Required)
    protocol = string (Required)
    affinity_cookie_name = string (Optional)
    host_name = string (Optional)
    id = string (Computed)
    path = string (Optional)
    pick_host_name_from_backend_address = bool (Optional)
    probe_id = string (Computed)
    probe_name = string (Optional)
    request_timeout = number (Optional)
    trusted_root_certificate_names = ['list', 'string'] (Optional)

    authentication_certificate block "list" (Optional) {
      name = string (Required)
      id = string (Computed)
    }

    connection_draining block "list" (Optional) {
      drain_timeout_sec = number (Required)
      enabled = bool (Required)
    }
  }

  custom_error_configuration block "list" (Optional) {
    custom_error_page_url = string (Required)
    status_code = string (Required)
    id = string (Computed)
  }

  frontend_ip_configuration block "list" (Required) {
    name = string (Required)
    id = string (Computed)
    private_ip_address = string (Optional, Computed)
    private_ip_address_allocation = string (Optional)
    private_link_configuration_id = string (Computed)
    private_link_configuration_name = string (Optional)
    public_ip_address_id = string (Optional)
    subnet_id = string (Optional)
  }

  frontend_port block "set" (Required) {
    name = string (Required)
    port = number (Required)
    id = string (Computed)
  }

  gateway_ip_configuration block "list" (Required) {
    name = string (Required)
    subnet_id = string (Required)
    id = string (Computed)
  }

  global block "list" (Optional) {
    request_buffering_enabled = bool (Required)
    response_buffering_enabled = bool (Required)
  }

  http_listener block "set" (Required) {
    frontend_ip_configuration_name = string (Required)
    frontend_port_name = string (Required)
    name = string (Required)
    protocol = string (Required)
    firewall_policy_id = string (Optional)
    frontend_ip_configuration_id = string (Computed)
    frontend_port_id = string (Computed)
    host_name = string (Optional)
    host_names = ['set', 'string'] (Optional)
    id = string (Computed)
    require_sni = bool (Optional)
    ssl_certificate_id = string (Computed)
    ssl_certificate_name = string (Optional)
    ssl_profile_id = string (Computed)
    ssl_profile_name = string (Optional)

    custom_error_configuration block "list" (Optional) {
      custom_error_page_url = string (Required)
      status_code = string (Required)
      id = string (Computed)
    }
  }

  identity block "list" (Optional) {
    type = string (Required)
    identity_ids = ['set', 'string'] (Optional)
    principal_id = string (Computed)
    tenant_id = string (Computed)
  }

  private_link_configuration block "set" (Optional) {
    name = string (Required)
    id = string (Computed)

    ip_configuration block "list" (Required) {
      name = string (Required)
      primary = bool (Required)
      private_ip_address_allocation = string (Required)
      subnet_id = string (Required)
      private_ip_address = string (Optional, Computed)
    }
  }

  probe block "set" (Optional) {
    interval = number (Required)
    name = string (Required)
    path = string (Required)
    protocol = string (Required)
    timeout = number (Required)
    unhealthy_threshold = number (Required)
    host = string (Optional)
    id = string (Computed)
    minimum_servers = number (Optional)
    pick_host_name_from_backend_http_settings = bool (Optional)
    port = number (Optional)

    match block "list" (Optional) {
      status_code = ['list', 'string'] (Required)
      body = string (Optional)
    }
  }

  redirect_configuration block "set" (Optional) {
    name = string (Required)
    redirect_type = string (Required)
    id = string (Computed)
    include_path = bool (Optional)
    include_query_string = bool (Optional)
    target_listener_id = string (Computed)
    target_listener_name = string (Optional)
    target_url = string (Optional)
  }

  request_routing_rule block "set" (Required) {
    http_listener_name = string (Required)
    name = string (Required)
    rule_type = string (Required)
    backend_address_pool_id = string (Computed)
    backend_address_pool_name = string (Optional)
    backend_http_settings_id = string (Computed)
    backend_http_settings_name = string (Optional)
    http_listener_id = string (Computed)
    id = string (Computed)
    priority = number (Optional)
    redirect_configuration_id = string (Computed)
    redirect_configuration_name = string (Optional)
    rewrite_rule_set_id = string (Computed)
    rewrite_rule_set_name = string (Optional)
    url_path_map_id = string (Computed)
    url_path_map_name = string (Optional)
  }

  rewrite_rule_set block "list" (Optional) {
    name = string (Required)
    id = string (Computed)

    rewrite_rule block "list" (Optional) {
      name = string (Required)
      rule_sequence = number (Required)

      condition block "list" (Optional) {
        pattern = string (Required)
        variable = string (Required)
        ignore_case = bool (Optional)
        negate = bool (Optional)
      }

      request_header_configuration block "list" (Optional) {
        header_name = string (Required)
        header_value = string (Required)
      }

      response_header_configuration block "list" (Optional) {
        header_name = string (Required)
        header_value = string (Required)
      }

      url block "list" (Optional) {
        components = string (Optional)
        path = string (Optional)
        query_string = string (Optional)
        reroute = bool (Optional)
      }
    }
  }

  sku block "list" (Required) {
    name = string (Required)
    tier = string (Required)
    capacity = number (Optional)
  }

  ssl_certificate block "set" (Optional) {
    name = string (Required)
    data = string (Optional)
    id = string (Computed)
    key_vault_secret_id = string (Optional)
    password = string (Optional)
    public_cert_data = string (Computed)
  }

  ssl_policy block "list" (Optional) {
    cipher_suites = ['list', 'string'] (Optional)
    disabled_protocols = ['list', 'string'] (Optional)
    min_protocol_version = string (Optional)
    policy_name = string (Optional)
    policy_type = string (Optional)
  }

  ssl_profile block "list" (Optional) {
    name = string (Required)
    id = string (Computed)
    trusted_client_certificate_names = ['list', 'string'] (Optional)
    verify_client_cert_issuer_dn = bool (Optional)
    verify_client_certificate_revocation = string (Optional)

    ssl_policy block "list" (Optional) {
      cipher_suites = ['list', 'string'] (Optional)
      disabled_protocols = ['list', 'string'] (Optional)
      min_protocol_version = string (Optional)
      policy_name = string (Optional)
      policy_type = string (Optional)
    }
  }

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    read = string (Optional)
    update = string (Optional)
  }

  trusted_client_certificate block "list" (Optional) {
    data = string (Required)
    name = string (Required)
    id = string (Computed)
  }

  trusted_root_certificate block "list" (Optional) {
    name = string (Required)
    data = string (Optional)
    id = string (Computed)
    key_vault_secret_id = string (Optional)
  }

  url_path_map block "list" (Optional) {
    name = string (Required)
    default_backend_address_pool_id = string (Computed)
    default_backend_address_pool_name = string (Optional)
    default_backend_http_settings_id = string (Computed)
    default_backend_http_settings_name = string (Optional)
    default_redirect_configuration_id = string (Computed)
    default_redirect_configuration_name = string (Optional)
    default_rewrite_rule_set_id = string (Computed)
    default_rewrite_rule_set_name = string (Optional)
    id = string (Computed)

    path_rule block "list" (Required) {
      name = string (Required)
      paths = ['list', 'string'] (Required)
      backend_address_pool_id = string (Computed)
      backend_address_pool_name = string (Optional)
      backend_http_settings_id = string (Computed)
      backend_http_settings_name = string (Optional)
      firewall_policy_id = string (Optional)
      id = string (Computed)
      redirect_configuration_id = string (Computed)
      redirect_configuration_name = string (Optional)
      rewrite_rule_set_id = string (Computed)
      rewrite_rule_set_name = string (Optional)
    }
  }

  waf_configuration block "list" (Optional) {
    enabled = bool (Required)
    firewall_mode = string (Required)
    rule_set_version = string (Required)
    file_upload_limit_mb = number (Optional)
    max_request_body_size_kb = number (Optional)
    request_body_check = bool (Optional)
    rule_set_type = string (Optional)

    disabled_rule_group block "list" (Optional) {
      rule_group_name = string (Required)
      rules = ['list', 'number'] (Optional)
    }

    exclusion block "list" (Optional) {
      match_variable = string (Required)
      selector = string (Optional)
      selector_match_operator = string (Optional)
    }
  }
}
