resource "google_compute_url_map" "name" {
  name = string (Required)
  creation_timestamp = string (Computed)
  default_service = string (Optional)
  description = string (Optional)
  fingerprint = string (Computed)
  id = string (Optional, Computed)
  map_id = number (Computed)
  project = string (Optional, Computed)
  self_link = string (Computed)

  default_custom_error_response_policy block "list" (Optional) {
    error_service = string (Optional)

    error_response_rule block "list" (Optional) {
      match_response_codes = ['list', 'string'] (Optional)
      override_response_code = number (Optional)
      path = string (Optional)
    }
  }

  default_route_action block "list" (Optional) {

    cors_policy block "list" (Optional) {
      allow_credentials = bool (Optional)
      allow_headers = ['list', 'string'] (Optional)
      allow_methods = ['list', 'string'] (Optional)
      allow_origin_regexes = ['list', 'string'] (Optional)
      allow_origins = ['list', 'string'] (Optional)
      disabled = bool (Optional)
      expose_headers = ['list', 'string'] (Optional)
      max_age = number (Optional)
    }

    fault_injection_policy block "list" (Optional) {

      abort block "list" (Optional) {
        http_status = number (Optional)
        percentage = number (Optional)
      }

      delay block "list" (Optional) {
        percentage = number (Optional)

        fixed_delay block "list" (Optional) {
          nanos = number (Optional)
          seconds = string (Optional)
        }
      }
    }

    max_stream_duration block "list" (Optional) {
      seconds = string (Required)
      nanos = number (Optional)
    }

    request_mirror_policy block "list" (Optional) {
      backend_service = string (Required)
    }

    retry_policy block "list" (Optional) {
      num_retries = number (Optional)
      retry_conditions = ['list', 'string'] (Optional)

      per_try_timeout block "list" (Optional) {
        nanos = number (Optional)
        seconds = string (Optional)
      }
    }

    timeout block "list" (Optional) {
      nanos = number (Optional)
      seconds = string (Optional)
    }

    url_rewrite block "list" (Optional) {
      host_rewrite = string (Optional)
      path_prefix_rewrite = string (Optional)
    }

    weighted_backend_services block "list" (Optional) {
      backend_service = string (Optional)
      weight = number (Optional)

      header_action block "list" (Optional) {
        request_headers_to_remove = ['list', 'string'] (Optional)
        response_headers_to_remove = ['list', 'string'] (Optional)

        request_headers_to_add block "list" (Optional) {
          header_name = string (Optional)
          header_value = string (Optional)
          replace = bool (Optional)
        }

        response_headers_to_add block "list" (Optional) {
          header_name = string (Optional)
          header_value = string (Optional)
          replace = bool (Optional)
        }
      }
    }
  }

  default_url_redirect block "list" (Optional) {
    strip_query = bool (Required)
    host_redirect = string (Optional)
    https_redirect = bool (Optional)
    path_redirect = string (Optional)
    prefix_redirect = string (Optional)
    redirect_response_code = string (Optional)
  }

  header_action block "list" (Optional) {
    request_headers_to_remove = ['list', 'string'] (Optional)
    response_headers_to_remove = ['list', 'string'] (Optional)

    request_headers_to_add block "list" (Optional) {
      header_name = string (Required)
      header_value = string (Required)
      replace = bool (Required)
    }

    response_headers_to_add block "list" (Optional) {
      header_name = string (Required)
      header_value = string (Required)
      replace = bool (Required)
    }
  }

  host_rule block "set" (Optional) {
    hosts = ['set', 'string'] (Required)
    path_matcher = string (Required)
    description = string (Optional)
  }

  path_matcher block "list" (Optional) {
    name = string (Required)
    default_service = string (Optional)
    description = string (Optional)

    default_custom_error_response_policy block "list" (Optional) {
      error_service = string (Optional)

      error_response_rule block "list" (Optional) {
        match_response_codes = ['list', 'string'] (Optional)
        override_response_code = number (Optional)
        path = string (Optional)
      }
    }

    default_route_action block "list" (Optional) {

      cors_policy block "list" (Optional) {
        allow_credentials = bool (Optional)
        allow_headers = ['list', 'string'] (Optional)
        allow_methods = ['list', 'string'] (Optional)
        allow_origin_regexes = ['list', 'string'] (Optional)
        allow_origins = ['list', 'string'] (Optional)
        disabled = bool (Optional)
        expose_headers = ['list', 'string'] (Optional)
        max_age = number (Optional)
      }

      fault_injection_policy block "list" (Optional) {

        abort block "list" (Optional) {
          http_status = number (Optional)
          percentage = number (Optional)
        }

        delay block "list" (Optional) {
          percentage = number (Optional)

          fixed_delay block "list" (Optional) {
            nanos = number (Optional)
            seconds = string (Optional)
          }
        }
      }

      max_stream_duration block "list" (Optional) {
        seconds = string (Required)
        nanos = number (Optional)
      }

      request_mirror_policy block "list" (Optional) {
        backend_service = string (Required)
      }

      retry_policy block "list" (Optional) {
        num_retries = number (Optional)
        retry_conditions = ['list', 'string'] (Optional)

        per_try_timeout block "list" (Optional) {
          nanos = number (Optional)
          seconds = string (Optional)
        }
      }

      timeout block "list" (Optional) {
        nanos = number (Optional)
        seconds = string (Optional)
      }

      url_rewrite block "list" (Optional) {
        host_rewrite = string (Optional)
        path_prefix_rewrite = string (Optional)
      }

      weighted_backend_services block "list" (Optional) {
        backend_service = string (Optional)
        weight = number (Optional)

        header_action block "list" (Optional) {
          request_headers_to_remove = ['list', 'string'] (Optional)
          response_headers_to_remove = ['list', 'string'] (Optional)

          request_headers_to_add block "list" (Optional) {
            header_name = string (Optional)
            header_value = string (Optional)
            replace = bool (Optional)
          }

          response_headers_to_add block "list" (Optional) {
            header_name = string (Optional)
            header_value = string (Optional)
            replace = bool (Optional)
          }
        }
      }
    }

    default_url_redirect block "list" (Optional) {
      strip_query = bool (Required)
      host_redirect = string (Optional)
      https_redirect = bool (Optional)
      path_redirect = string (Optional)
      prefix_redirect = string (Optional)
      redirect_response_code = string (Optional)
    }

    header_action block "list" (Optional) {
      request_headers_to_remove = ['list', 'string'] (Optional)
      response_headers_to_remove = ['list', 'string'] (Optional)

      request_headers_to_add block "list" (Optional) {
        header_name = string (Required)
        header_value = string (Required)
        replace = bool (Required)
      }

      response_headers_to_add block "list" (Optional) {
        header_name = string (Required)
        header_value = string (Required)
        replace = bool (Required)
      }
    }

    path_rule block "list" (Optional) {
      paths = ['set', 'string'] (Required)
      service = string (Optional)

      custom_error_response_policy block "list" (Optional) {
        error_service = string (Optional)

        error_response_rule block "list" (Optional) {
          match_response_codes = ['list', 'string'] (Optional)
          override_response_code = number (Optional)
          path = string (Optional)
        }
      }

      route_action block "list" (Optional) {

        cors_policy block "list" (Optional) {
          disabled = bool (Required)
          allow_credentials = bool (Optional)
          allow_headers = ['list', 'string'] (Optional)
          allow_methods = ['list', 'string'] (Optional)
          allow_origin_regexes = ['list', 'string'] (Optional)
          allow_origins = ['list', 'string'] (Optional)
          expose_headers = ['list', 'string'] (Optional)
          max_age = number (Optional)
        }

        fault_injection_policy block "list" (Optional) {

          abort block "list" (Optional) {
            http_status = number (Required)
            percentage = number (Required)
          }

          delay block "list" (Optional) {
            percentage = number (Required)

            fixed_delay block "list" (Required) {
              seconds = string (Required)
              nanos = number (Optional)
            }
          }
        }

        max_stream_duration block "list" (Optional) {
          seconds = string (Required)
          nanos = number (Optional)
        }

        request_mirror_policy block "list" (Optional) {
          backend_service = string (Required)
        }

        retry_policy block "list" (Optional) {
          num_retries = number (Optional)
          retry_conditions = ['list', 'string'] (Optional)

          per_try_timeout block "list" (Optional) {
            seconds = string (Required)
            nanos = number (Optional)
          }
        }

        timeout block "list" (Optional) {
          seconds = string (Required)
          nanos = number (Optional)
        }

        url_rewrite block "list" (Optional) {
          host_rewrite = string (Optional)
          path_prefix_rewrite = string (Optional)
        }

        weighted_backend_services block "list" (Optional) {
          backend_service = string (Required)
          weight = number (Required)

          header_action block "list" (Optional) {
            request_headers_to_remove = ['list', 'string'] (Optional)
            response_headers_to_remove = ['list', 'string'] (Optional)

            request_headers_to_add block "list" (Optional) {
              header_name = string (Required)
              header_value = string (Required)
              replace = bool (Required)
            }

            response_headers_to_add block "list" (Optional) {
              header_name = string (Required)
              header_value = string (Required)
              replace = bool (Required)
            }
          }
        }
      }

      url_redirect block "list" (Optional) {
        strip_query = bool (Required)
        host_redirect = string (Optional)
        https_redirect = bool (Optional)
        path_redirect = string (Optional)
        prefix_redirect = string (Optional)
        redirect_response_code = string (Optional)
      }
    }

    route_rules block "list" (Optional) {
      priority = number (Required)
      service = string (Optional)

      custom_error_response_policy block "list" (Optional) {
        error_service = string (Optional)

        error_response_rule block "list" (Optional) {
          match_response_codes = ['list', 'string'] (Optional)
          override_response_code = number (Optional)
          path = string (Optional)
        }
      }

      header_action block "list" (Optional) {
        request_headers_to_remove = ['list', 'string'] (Optional)
        response_headers_to_remove = ['list', 'string'] (Optional)

        request_headers_to_add block "list" (Optional) {
          header_name = string (Required)
          header_value = string (Required)
          replace = bool (Required)
        }

        response_headers_to_add block "list" (Optional) {
          header_name = string (Required)
          header_value = string (Required)
          replace = bool (Required)
        }
      }

      match_rules block "list" (Optional) {
        full_path_match = string (Optional)
        ignore_case = bool (Optional)
        path_template_match = string (Optional)
        prefix_match = string (Optional)
        regex_match = string (Optional)

        header_matches block "list" (Optional) {
          header_name = string (Required)
          exact_match = string (Optional)
          invert_match = bool (Optional)
          prefix_match = string (Optional)
          present_match = bool (Optional)
          regex_match = string (Optional)
          suffix_match = string (Optional)

          range_match block "list" (Optional) {
            range_end = number (Required)
            range_start = number (Required)
          }
        }

        metadata_filters block "list" (Optional) {
          filter_match_criteria = string (Required)

          filter_labels block "list" (Required) {
            name = string (Required)
            value = string (Required)
          }
        }

        query_parameter_matches block "list" (Optional) {
          name = string (Required)
          exact_match = string (Optional)
          present_match = bool (Optional)
          regex_match = string (Optional)
        }
      }

      route_action block "list" (Optional) {

        cors_policy block "list" (Optional) {
          allow_credentials = bool (Optional)
          allow_headers = ['list', 'string'] (Optional)
          allow_methods = ['list', 'string'] (Optional)
          allow_origin_regexes = ['list', 'string'] (Optional)
          allow_origins = ['list', 'string'] (Optional)
          disabled = bool (Optional)
          expose_headers = ['list', 'string'] (Optional)
          max_age = number (Optional)
        }

        fault_injection_policy block "list" (Optional) {

          abort block "list" (Optional) {
            http_status = number (Optional)
            percentage = number (Optional)
          }

          delay block "list" (Optional) {
            percentage = number (Optional)

            fixed_delay block "list" (Optional) {
              seconds = string (Required)
              nanos = number (Optional)
            }
          }
        }

        max_stream_duration block "list" (Optional) {
          seconds = string (Required)
          nanos = number (Optional)
        }

        request_mirror_policy block "list" (Optional) {
          backend_service = string (Required)
        }

        retry_policy block "list" (Optional) {
          num_retries = number (Required)
          retry_conditions = ['list', 'string'] (Optional)

          per_try_timeout block "list" (Optional) {
            seconds = string (Required)
            nanos = number (Optional)
          }
        }

        timeout block "list" (Optional) {
          seconds = string (Required)
          nanos = number (Optional)
        }

        url_rewrite block "list" (Optional) {
          host_rewrite = string (Optional)
          path_prefix_rewrite = string (Optional)
          path_template_rewrite = string (Optional)
        }

        weighted_backend_services block "list" (Optional) {
          backend_service = string (Required)
          weight = number (Required)

          header_action block "list" (Optional) {
            request_headers_to_remove = ['list', 'string'] (Optional)
            response_headers_to_remove = ['list', 'string'] (Optional)

            request_headers_to_add block "list" (Optional) {
              header_name = string (Required)
              header_value = string (Required)
              replace = bool (Required)
            }

            response_headers_to_add block "list" (Optional) {
              header_name = string (Required)
              header_value = string (Required)
              replace = bool (Required)
            }
          }
        }
      }

      url_redirect block "list" (Optional) {
        host_redirect = string (Optional)
        https_redirect = bool (Optional)
        path_redirect = string (Optional)
        prefix_redirect = string (Optional)
        redirect_response_code = string (Optional)
        strip_query = bool (Optional)
      }
    }
  }

  test block "list" (Optional) {
    host = string (Required)
    path = string (Required)
    description = string (Optional)
    expected_output_url = string (Optional)
    expected_redirect_response_code = number (Optional)
    service = string (Optional)

    headers block "list" (Optional) {
      name = string (Required)
      value = string (Required)
    }
  }

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    update = string (Optional)
  }
}
