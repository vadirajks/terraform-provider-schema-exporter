resource "aws_alb_listener_rule" "name" {
  listener_arn = string (Required)
  arn = string (Computed)
  id = string (Optional, Computed)
  priority = number (Optional, Computed)
  region = string (Optional, Computed)
  tags = ['map', 'string'] (Optional)
  tags_all = ['map', 'string'] (Optional, Computed)

  action block "list" (Required) {
    type = string (Required)
    order = number (Optional, Computed)
    target_group_arn = string (Optional)

    authenticate_cognito block "list" (Optional) {
      user_pool_arn = string (Required)
      user_pool_client_id = string (Required)
      user_pool_domain = string (Required)
      authentication_request_extra_params = ['map', 'string'] (Optional)
      on_unauthenticated_request = string (Optional, Computed)
      scope = string (Optional)
      session_cookie_name = string (Optional)
      session_timeout = number (Optional)
    }

    authenticate_oidc block "list" (Optional) {
      authorization_endpoint = string (Required)
      client_id = string (Required)
      client_secret = string (Required)
      issuer = string (Required)
      token_endpoint = string (Required)
      user_info_endpoint = string (Required)
      authentication_request_extra_params = ['map', 'string'] (Optional)
      on_unauthenticated_request = string (Optional, Computed)
      scope = string (Optional)
      session_cookie_name = string (Optional)
      session_timeout = number (Optional)
    }

    fixed_response block "list" (Optional) {
      content_type = string (Required)
      message_body = string (Optional)
      status_code = string (Optional, Computed)
    }

    forward block "list" (Optional) {

      stickiness block "list" (Optional) {
        duration = number (Required)
        enabled = bool (Optional)
      }

      target_group block "set" (Required) {
        arn = string (Required)
        weight = number (Optional)
      }
    }

    redirect block "list" (Optional) {
      status_code = string (Required)
      host = string (Optional)
      path = string (Optional)
      port = string (Optional)
      protocol = string (Optional)
      query = string (Optional)
    }
  }

  condition block "set" (Required) {

    host_header block "list" (Optional) {
      regex_values = ['set', 'string'] (Optional)
      values = ['set', 'string'] (Optional)
    }

    http_header block "list" (Optional) {
      http_header_name = string (Required)
      regex_values = ['set', 'string'] (Optional)
      values = ['set', 'string'] (Optional)
    }

    http_request_method block "list" (Optional) {
      values = ['set', 'string'] (Required)
    }

    path_pattern block "list" (Optional) {
      regex_values = ['set', 'string'] (Optional)
      values = ['set', 'string'] (Optional)
    }

    query_string block "set" (Optional) {
      value = string (Required)
      key = string (Optional)
    }

    source_ip block "list" (Optional) {
      values = ['set', 'string'] (Required)
    }
  }

  transform block "set" (Optional) {
    type = string (Required)

    host_header_rewrite_config block "list" (Optional) {

      rewrite block "list" (Optional) {
        regex = string (Required)
        replace = string (Required)
      }
    }

    url_rewrite_config block "list" (Optional) {

      rewrite block "list" (Optional) {
        regex = string (Required)
        replace = string (Required)
      }
    }
  }
}
