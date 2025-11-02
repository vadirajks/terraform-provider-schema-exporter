resource "google_network_services_http_route" "name" {
  hostnames = ['list', 'string'] (Required)
  name = string (Required)
  create_time = string (Computed)
  description = string (Optional)
  effective_labels = ['map', 'string'] (Computed)
  gateways = ['list', 'string'] (Optional)
  id = string (Optional, Computed)
  labels = ['map', 'string'] (Optional)
  meshes = ['list', 'string'] (Optional)
  project = string (Optional, Computed)
  self_link = string (Computed)
  terraform_labels = ['map', 'string'] (Computed)
  update_time = string (Computed)

  rules block "list" (Required) {

    action block "list" (Optional) {
      timeout = string (Optional)

      cors_policy block "list" (Optional) {
        allow_credentials = bool (Optional)
        allow_headers = ['list', 'string'] (Optional)
        allow_methods = ['list', 'string'] (Optional)
        allow_origin_regexes = ['list', 'string'] (Optional)
        allow_origins = ['list', 'string'] (Optional)
        disabled = bool (Optional)
        expose_headers = ['list', 'string'] (Optional)
        max_age = string (Optional)
      }

      destinations block "list" (Optional) {
        service_name = string (Optional)
        weight = number (Optional)
      }

      fault_injection_policy block "list" (Optional) {

        abort block "list" (Optional) {
          http_status = number (Optional)
          percentage = number (Optional)
        }

        delay block "list" (Optional) {
          fixed_delay = string (Optional)
          percentage = number (Optional)
        }
      }

      redirect block "list" (Optional) {
        host_redirect = string (Optional)
        https_redirect = bool (Optional)
        path_redirect = string (Optional)
        port_redirect = number (Optional)
        prefix_rewrite = string (Optional)
        response_code = string (Optional)
        strip_query = bool (Optional)
      }

      request_header_modifier block "list" (Optional) {
        add = ['map', 'string'] (Optional)
        remove = ['list', 'string'] (Optional)
        set = ['map', 'string'] (Optional)
      }

      request_mirror_policy block "list" (Optional) {

        destination block "list" (Optional) {
          service_name = string (Optional)
          weight = number (Optional)
        }
      }

      response_header_modifier block "list" (Optional) {
        add = ['map', 'string'] (Optional)
        remove = ['list', 'string'] (Optional)
        set = ['map', 'string'] (Optional)
      }

      retry_policy block "list" (Optional) {
        num_retries = number (Optional)
        per_try_timeout = string (Optional)
        retry_conditions = ['list', 'string'] (Optional)
      }

      url_rewrite block "list" (Optional) {
        host_rewrite = string (Optional)
        path_prefix_rewrite = string (Optional)
      }
    }

    matches block "list" (Optional) {
      full_path_match = string (Optional)
      ignore_case = bool (Optional)
      prefix_match = string (Optional)
      regex_match = string (Optional)

      headers block "list" (Optional) {
        exact_match = string (Optional)
        header = string (Optional)
        invert_match = bool (Optional)
        prefix_match = string (Optional)
        present_match = bool (Optional)
        regex_match = string (Optional)
        suffix_match = string (Optional)

        range_match block "list" (Optional) {
          end = number (Required)
          start = number (Required)
        }
      }

      query_parameters block "list" (Optional) {
        exact_match = string (Optional)
        present_match = bool (Optional)
        query_parameter = string (Optional)
        regex_match = string (Optional)
      }
    }
  }

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    update = string (Optional)
  }
}
