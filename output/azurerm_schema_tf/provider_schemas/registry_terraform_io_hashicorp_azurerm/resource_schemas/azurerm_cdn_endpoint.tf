resource "azurerm_cdn_endpoint" "name" {
  location = string (Required)
  name = string (Required)
  profile_name = string (Required)
  resource_group_name = string (Required)
  content_types_to_compress = ['set', 'string'] (Optional)
  fqdn = string (Computed)
  id = string (Optional, Computed)
  is_compression_enabled = bool (Optional)
  is_http_allowed = bool (Optional)
  is_https_allowed = bool (Optional)
  optimization_type = string (Optional)
  origin_host_header = string (Optional)
  origin_path = string (Optional)
  probe_path = string (Optional)
  querystring_caching_behaviour = string (Optional)
  tags = ['map', 'string'] (Optional)

  delivery_rule block "list" (Optional) {
    name = string (Required)
    order = number (Required)

    cache_expiration_action block "list" (Optional) {
      behavior = string (Required)
      duration = string (Optional)
    }

    cache_key_query_string_action block "list" (Optional) {
      behavior = string (Required)
      parameters = string (Optional)
    }

    cookies_condition block "list" (Optional) {
      operator = string (Required)
      selector = string (Required)
      match_values = ['set', 'string'] (Optional)
      negate_condition = bool (Optional)
      transforms = ['list', 'string'] (Optional)
    }

    device_condition block "list" (Optional) {
      match_values = ['set', 'string'] (Required)
      negate_condition = bool (Optional)
      operator = string (Optional)
    }

    http_version_condition block "list" (Optional) {
      match_values = ['set', 'string'] (Required)
      negate_condition = bool (Optional)
      operator = string (Optional)
    }

    modify_request_header_action block "list" (Optional) {
      action = string (Required)
      name = string (Required)
      value = string (Optional)
    }

    modify_response_header_action block "list" (Optional) {
      action = string (Required)
      name = string (Required)
      value = string (Optional)
    }

    post_arg_condition block "list" (Optional) {
      operator = string (Required)
      selector = string (Required)
      match_values = ['set', 'string'] (Optional)
      negate_condition = bool (Optional)
      transforms = ['list', 'string'] (Optional)
    }

    query_string_condition block "list" (Optional) {
      operator = string (Required)
      match_values = ['set', 'string'] (Optional)
      negate_condition = bool (Optional)
      transforms = ['list', 'string'] (Optional)
    }

    remote_address_condition block "list" (Optional) {
      operator = string (Required)
      match_values = ['set', 'string'] (Optional)
      negate_condition = bool (Optional)
    }

    request_body_condition block "list" (Optional) {
      operator = string (Required)
      match_values = ['set', 'string'] (Optional)
      negate_condition = bool (Optional)
      transforms = ['list', 'string'] (Optional)
    }

    request_header_condition block "list" (Optional) {
      operator = string (Required)
      selector = string (Required)
      match_values = ['set', 'string'] (Optional)
      negate_condition = bool (Optional)
      transforms = ['list', 'string'] (Optional)
    }

    request_method_condition block "list" (Optional) {
      match_values = ['set', 'string'] (Required)
      negate_condition = bool (Optional)
      operator = string (Optional)
    }

    request_scheme_condition block "list" (Optional) {
      match_values = ['set', 'string'] (Required)
      negate_condition = bool (Optional)
      operator = string (Optional)
    }

    request_uri_condition block "list" (Optional) {
      operator = string (Required)
      match_values = ['set', 'string'] (Optional)
      negate_condition = bool (Optional)
      transforms = ['list', 'string'] (Optional)
    }

    url_file_extension_condition block "list" (Optional) {
      operator = string (Required)
      match_values = ['set', 'string'] (Optional)
      negate_condition = bool (Optional)
      transforms = ['list', 'string'] (Optional)
    }

    url_file_name_condition block "list" (Optional) {
      operator = string (Required)
      match_values = ['set', 'string'] (Optional)
      negate_condition = bool (Optional)
      transforms = ['list', 'string'] (Optional)
    }

    url_path_condition block "list" (Optional) {
      operator = string (Required)
      match_values = ['set', 'string'] (Optional)
      negate_condition = bool (Optional)
      transforms = ['list', 'string'] (Optional)
    }

    url_redirect_action block "list" (Optional) {
      redirect_type = string (Required)
      fragment = string (Optional)
      hostname = string (Optional)
      path = string (Optional)
      protocol = string (Optional)
      query_string = string (Optional)
    }

    url_rewrite_action block "list" (Optional) {
      destination = string (Required)
      source_pattern = string (Required)
      preserve_unmatched_path = bool (Optional)
    }
  }

  geo_filter block "list" (Optional) {
    action = string (Required)
    country_codes = ['list', 'string'] (Required)
    relative_path = string (Required)
  }

  global_delivery_rule block "list" (Optional) {

    cache_expiration_action block "list" (Optional) {
      behavior = string (Required)
      duration = string (Optional)
    }

    cache_key_query_string_action block "list" (Optional) {
      behavior = string (Required)
      parameters = string (Optional)
    }

    modify_request_header_action block "list" (Optional) {
      action = string (Required)
      name = string (Required)
      value = string (Optional)
    }

    modify_response_header_action block "list" (Optional) {
      action = string (Required)
      name = string (Required)
      value = string (Optional)
    }

    url_redirect_action block "list" (Optional) {
      redirect_type = string (Required)
      fragment = string (Optional)
      hostname = string (Optional)
      path = string (Optional)
      protocol = string (Optional)
      query_string = string (Optional)
    }

    url_rewrite_action block "list" (Optional) {
      destination = string (Required)
      source_pattern = string (Required)
      preserve_unmatched_path = bool (Optional)
    }
  }

  origin block "set" (Required) {
    host_name = string (Required)
    name = string (Required)
    http_port = number (Optional)
    https_port = number (Optional)
  }

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    read = string (Optional)
    update = string (Optional)
  }
}
