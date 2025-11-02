data "aws_lb_listener_rule" "name" {
  arn = string (Optional, Computed)
  listener_arn = string (Optional, Computed)
  priority = number (Optional, Computed)
  region = string (Optional, Computed)
  tags = ['map', 'string'] (Computed)

  action block "list" (Optional) {
    order = number (Computed)
    type = string (Computed)

    authenticate_cognito block "list" (Optional) {
      authentication_request_extra_params = ['map', 'string'] (Computed)
      on_unauthenticated_request = string (Computed)
      scope = string (Computed)
      session_cookie_name = string (Computed)
      session_timeout = number (Computed)
      user_pool_arn = string (Computed)
      user_pool_client_id = string (Computed)
      user_pool_domain = string (Computed)
    }

    authenticate_oidc block "list" (Optional) {
      authentication_request_extra_params = ['map', 'string'] (Computed)
      authorization_endpoint = string (Computed)
      client_id = string (Computed)
      issuer = string (Computed)
      on_unauthenticated_request = string (Computed)
      scope = string (Computed)
      session_cookie_name = string (Computed)
      session_timeout = number (Computed)
      token_endpoint = string (Computed)
      user_info_endpoint = string (Computed)
    }

    fixed_response block "list" (Optional) {
      content_type = string (Computed)
      message_body = string (Computed)
      status_code = string (Computed)
    }

    forward block "list" (Optional) {

      stickiness block "list" (Optional) {
        duration = number (Computed)
        enabled = bool (Computed)
      }

      target_group block "set" (Optional) {
        arn = string (Computed)
        weight = number (Computed)
      }
    }

    redirect block "list" (Optional) {
      host = string (Computed)
      path = string (Computed)
      port = string (Computed)
      protocol = string (Computed)
      query = string (Computed)
      status_code = string (Computed)
    }
  }

  condition block "set" (Optional) {

    host_header block "list" (Optional) {
      regex_values = ['set', 'string'] (Computed)
      values = ['set', 'string'] (Computed)
    }

    http_header block "list" (Optional) {
      http_header_name = string (Computed)
      regex_values = ['set', 'string'] (Computed)
      values = ['set', 'string'] (Computed)
    }

    http_request_method block "list" (Optional) {
      values = ['set', 'string'] (Computed)
    }

    path_pattern block "list" (Optional) {
      regex_values = ['set', 'string'] (Computed)
      values = ['set', 'string'] (Computed)
    }

    query_string block "list" (Optional) {

      values block "set" (Optional) {
        key = string (Computed)
        value = string (Computed)
      }
    }

    source_ip block "list" (Optional) {
      values = ['set', 'string'] (Computed)
    }
  }

  transform block "set" (Optional) {
    type = string (Computed)

    host_header_rewrite_config block "list" (Optional) {

      rewrite block "list" (Optional) {
        regex = string (Computed)
        replace = string (Computed)
      }
    }

    url_rewrite_config block "list" (Optional) {

      rewrite block "list" (Optional) {
        regex = string (Computed)
        replace = string (Computed)
      }
    }
  }
}
