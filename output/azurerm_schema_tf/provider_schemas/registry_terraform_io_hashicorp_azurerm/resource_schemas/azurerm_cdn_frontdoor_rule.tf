resource "azurerm_cdn_frontdoor_rule" "name" {
  cdn_frontdoor_rule_set_id = string (Required)
  name = string (Required)
  order = number (Required)
  behavior_on_match = string (Optional)
  cdn_frontdoor_rule_set_name = string (Computed)
  id = string (Optional, Computed)

  actions block "list" (Required) {

    request_header_action block "list" (Optional) {
      header_action = string (Required)
      header_name = string (Required)
      value = string (Optional)
    }

    response_header_action block "list" (Optional) {
      header_action = string (Required)
      header_name = string (Required)
      value = string (Optional)
    }

    route_configuration_override_action block "list" (Optional) {
      cache_behavior = string (Optional)
      cache_duration = string (Optional)
      cdn_frontdoor_origin_group_id = string (Optional)
      compression_enabled = bool (Optional)
      forwarding_protocol = string (Optional)
      query_string_caching_behavior = string (Optional)
      query_string_parameters = ['list', 'string'] (Optional)
    }

    url_redirect_action block "list" (Optional) {
      destination_hostname = string (Required)
      redirect_type = string (Required)
      destination_fragment = string (Optional)
      destination_path = string (Optional)
      query_string = string (Optional)
      redirect_protocol = string (Optional)
    }

    url_rewrite_action block "list" (Optional) {
      destination = string (Required)
      source_pattern = string (Required)
      preserve_unmatched_path = bool (Optional)
    }
  }

  conditions block "list" (Optional) {

    client_port_condition block "list" (Optional) {
      operator = string (Required)
      match_values = ['list', 'string'] (Optional)
      negate_condition = bool (Optional)
    }

    cookies_condition block "list" (Optional) {
      cookie_name = string (Required)
      operator = string (Required)
      match_values = ['list', 'string'] (Optional)
      negate_condition = bool (Optional)
      transforms = ['set', 'string'] (Optional)
    }

    host_name_condition block "list" (Optional) {
      operator = string (Required)
      match_values = ['list', 'string'] (Optional)
      negate_condition = bool (Optional)
      transforms = ['set', 'string'] (Optional)
    }

    http_version_condition block "list" (Optional) {
      match_values = ['set', 'string'] (Required)
      negate_condition = bool (Optional)
      operator = string (Optional)
    }

    is_device_condition block "list" (Optional) {
      match_values = ['list', 'string'] (Optional)
      negate_condition = bool (Optional)
      operator = string (Optional)
    }

    post_args_condition block "list" (Optional) {
      operator = string (Required)
      post_args_name = string (Required)
      match_values = ['list', 'string'] (Optional)
      negate_condition = bool (Optional)
      transforms = ['set', 'string'] (Optional)
    }

    query_string_condition block "list" (Optional) {
      operator = string (Required)
      match_values = ['list', 'string'] (Optional)
      negate_condition = bool (Optional)
      transforms = ['set', 'string'] (Optional)
    }

    remote_address_condition block "list" (Optional) {
      match_values = ['list', 'string'] (Optional)
      negate_condition = bool (Optional)
      operator = string (Optional)
    }

    request_body_condition block "list" (Optional) {
      match_values = ['list', 'string'] (Required)
      operator = string (Required)
      negate_condition = bool (Optional)
      transforms = ['set', 'string'] (Optional)
    }

    request_header_condition block "list" (Optional) {
      header_name = string (Required)
      operator = string (Required)
      match_values = ['list', 'string'] (Optional)
      negate_condition = bool (Optional)
      transforms = ['set', 'string'] (Optional)
    }

    request_method_condition block "list" (Optional) {
      match_values = ['set', 'string'] (Required)
      negate_condition = bool (Optional)
      operator = string (Optional)
    }

    request_scheme_condition block "list" (Optional) {
      match_values = ['list', 'string'] (Optional)
      negate_condition = bool (Optional)
      operator = string (Optional)
    }

    request_uri_condition block "list" (Optional) {
      operator = string (Required)
      match_values = ['list', 'string'] (Optional)
      negate_condition = bool (Optional)
      transforms = ['set', 'string'] (Optional)
    }

    server_port_condition block "list" (Optional) {
      match_values = ['set', 'string'] (Required)
      operator = string (Required)
      negate_condition = bool (Optional)
    }

    socket_address_condition block "list" (Optional) {
      match_values = ['list', 'string'] (Optional)
      negate_condition = bool (Optional)
      operator = string (Optional)
    }

    ssl_protocol_condition block "list" (Optional) {
      match_values = ['set', 'string'] (Required)
      negate_condition = bool (Optional)
      operator = string (Optional)
    }

    url_file_extension_condition block "list" (Optional) {
      match_values = ['list', 'string'] (Required)
      operator = string (Required)
      negate_condition = bool (Optional)
      transforms = ['set', 'string'] (Optional)
    }

    url_filename_condition block "list" (Optional) {
      operator = string (Required)
      match_values = ['list', 'string'] (Optional)
      negate_condition = bool (Optional)
      transforms = ['set', 'string'] (Optional)
    }

    url_path_condition block "list" (Optional) {
      operator = string (Required)
      match_values = ['list', 'string'] (Optional)
      negate_condition = bool (Optional)
      transforms = ['set', 'string'] (Optional)
    }
  }

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    read = string (Optional)
    update = string (Optional)
  }
}
