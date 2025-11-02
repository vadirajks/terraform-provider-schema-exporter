resource "google_network_services_edge_cache_service" "name" {
  name = string (Required)
  description = string (Optional)
  disable_http2 = bool (Optional)
  disable_quic = bool (Optional, Computed)
  edge_security_policy = string (Optional)
  edge_ssl_certificates = ['list', 'string'] (Optional)
  effective_labels = ['map', 'string'] (Computed)
  id = string (Optional, Computed)
  ipv4_addresses = ['list', 'string'] (Computed)
  ipv6_addresses = ['list', 'string'] (Computed)
  labels = ['map', 'string'] (Optional)
  project = string (Optional, Computed)
  require_tls = bool (Optional, Computed)
  ssl_policy = string (Optional)
  terraform_labels = ['map', 'string'] (Computed)

  log_config block "list" (Optional) {
    enable = bool (Optional, Computed)
    sample_rate = number (Optional)
  }

  routing block "list" (Required) {

    host_rule block "list" (Required) {
      hosts = ['list', 'string'] (Required)
      path_matcher = string (Required)
      description = string (Optional)
    }

    path_matcher block "list" (Required) {
      name = string (Required)
      description = string (Optional)

      route_rule block "list" (Required) {
        priority = string (Required)
        description = string (Optional)
        origin = string (Optional)

        header_action block "list" (Optional) {

          request_header_to_add block "list" (Optional) {
            header_name = string (Required)
            header_value = string (Required)
            replace = bool (Optional, Computed)
          }

          request_header_to_remove block "list" (Optional) {
            header_name = string (Required)
          }

          response_header_to_add block "list" (Optional) {
            header_name = string (Required)
            header_value = string (Required)
            replace = bool (Optional, Computed)
          }

          response_header_to_remove block "list" (Optional) {
            header_name = string (Required)
          }
        }

        match_rule block "list" (Required) {
          full_path_match = string (Optional)
          ignore_case = bool (Optional, Computed)
          path_template_match = string (Optional)
          prefix_match = string (Optional)

          header_match block "list" (Optional) {
            header_name = string (Required)
            exact_match = string (Optional)
            invert_match = bool (Optional, Computed)
            prefix_match = string (Optional)
            present_match = bool (Optional)
            suffix_match = string (Optional)
          }

          query_parameter_match block "list" (Optional) {
            name = string (Required)
            exact_match = string (Optional)
            present_match = bool (Optional)
          }
        }

        route_action block "list" (Optional) {
          compression_mode = string (Optional)

          cdn_policy block "list" (Optional) {
            cache_mode = string (Optional, Computed)
            client_ttl = string (Optional)
            default_ttl = string (Optional, Computed)
            max_ttl = string (Optional, Computed)
            negative_caching = bool (Optional)
            negative_caching_policy = ['map', 'string'] (Optional)
            signed_request_keyset = string (Optional, Computed)
            signed_request_maximum_expiration_ttl = string (Optional)
            signed_request_mode = string (Optional, Computed)

            add_signatures block "list" (Optional) {
              actions = ['list', 'string'] (Required)
              copied_parameters = ['list', 'string'] (Optional)
              keyset = string (Optional)
              token_query_parameter = string (Optional)
              token_ttl = string (Optional)
            }

            cache_key_policy block "list" (Optional) {
              exclude_host = bool (Optional, Computed)
              exclude_query_string = bool (Optional)
              excluded_query_parameters = ['list', 'string'] (Optional)
              include_protocol = bool (Optional, Computed)
              included_cookie_names = ['list', 'string'] (Optional)
              included_header_names = ['list', 'string'] (Optional)
              included_query_parameters = ['list', 'string'] (Optional)
            }

            signed_token_options block "list" (Optional) {
              allowed_signature_algorithms = ['list', 'string'] (Optional)
              token_query_parameter = string (Optional)
            }
          }

          cors_policy block "list" (Optional) {
            max_age = string (Required)
            allow_credentials = bool (Optional)
            allow_headers = ['list', 'string'] (Optional)
            allow_methods = ['list', 'string'] (Optional)
            allow_origins = ['list', 'string'] (Optional)
            disabled = bool (Optional)
            expose_headers = ['list', 'string'] (Optional)
          }

          url_rewrite block "list" (Optional) {
            host_rewrite = string (Optional)
            path_prefix_rewrite = string (Optional)
            path_template_rewrite = string (Optional)
          }
        }

        route_methods block "list" (Optional) {
          allowed_methods = ['list', 'string'] (Optional)
        }

        url_redirect block "list" (Optional) {
          host_redirect = string (Optional)
          https_redirect = bool (Optional, Computed)
          path_redirect = string (Optional)
          prefix_redirect = string (Optional)
          redirect_response_code = string (Optional, Computed)
          strip_query = bool (Optional, Computed)
        }
      }
    }
  }

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    update = string (Optional)
  }
}
