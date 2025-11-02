resource "aws_lb_listener" "name" {
  load_balancer_arn = string (Required)
  alpn_policy = string (Optional)
  arn = string (Computed)
  certificate_arn = string (Optional)
  id = string (Optional, Computed)
  port = number (Optional)
  protocol = string (Optional, Computed)
  region = string (Optional, Computed)
  routing_http_request_x_amzn_mtls_clientcert_header_name = string (Optional, Computed)
  routing_http_request_x_amzn_mtls_clientcert_issuer_header_name = string (Optional, Computed)
  routing_http_request_x_amzn_mtls_clientcert_leaf_header_name = string (Optional, Computed)
  routing_http_request_x_amzn_mtls_clientcert_serial_number_header_name = string (Optional, Computed)
  routing_http_request_x_amzn_mtls_clientcert_subject_header_name = string (Optional, Computed)
  routing_http_request_x_amzn_mtls_clientcert_validity_header_name = string (Optional, Computed)
  routing_http_request_x_amzn_tls_cipher_suite_header_name = string (Optional, Computed)
  routing_http_request_x_amzn_tls_version_header_name = string (Optional, Computed)
  routing_http_response_access_control_allow_credentials_header_value = string (Optional, Computed)
  routing_http_response_access_control_allow_headers_header_value = string (Optional, Computed)
  routing_http_response_access_control_allow_methods_header_value = string (Optional, Computed)
  routing_http_response_access_control_allow_origin_header_value = string (Optional, Computed)
  routing_http_response_access_control_expose_headers_header_value = string (Optional, Computed)
  routing_http_response_access_control_max_age_header_value = string (Optional, Computed)
  routing_http_response_content_security_policy_header_value = string (Optional, Computed)
  routing_http_response_server_enabled = bool (Optional, Computed)
  routing_http_response_strict_transport_security_header_value = string (Optional, Computed)
  routing_http_response_x_content_type_options_header_value = string (Optional, Computed)
  routing_http_response_x_frame_options_header_value = string (Optional, Computed)
  ssl_policy = string (Optional, Computed)
  tags = ['map', 'string'] (Optional)
  tags_all = ['map', 'string'] (Optional, Computed)
  tcp_idle_timeout_seconds = number (Optional, Computed)

  default_action block "list" (Required) {
    type = string (Required)
    order = number (Optional, Computed)
    target_group_arn = string (Optional)

    authenticate_cognito block "list" (Optional) {
      user_pool_arn = string (Required)
      user_pool_client_id = string (Required)
      user_pool_domain = string (Required)
      authentication_request_extra_params = ['map', 'string'] (Optional)
      on_unauthenticated_request = string (Optional, Computed)
      scope = string (Optional, Computed)
      session_cookie_name = string (Optional, Computed)
      session_timeout = number (Optional, Computed)
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
      scope = string (Optional, Computed)
      session_cookie_name = string (Optional, Computed)
      session_timeout = number (Optional, Computed)
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

  mutual_authentication block "list" (Optional) {
    mode = string (Required)
    advertise_trust_store_ca_names = string (Optional, Computed)
    ignore_client_certificate_expiry = bool (Optional)
    trust_store_arn = string (Optional)
  }

  timeouts block "single" (Optional) {
    create = string (Optional)
    update = string (Optional)
  }
}
