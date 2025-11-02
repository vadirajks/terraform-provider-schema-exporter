data "aws_lb_listener" "name" {
  alpn_policy = string (Computed)
  arn = string (Optional, Computed)
  certificate_arn = string (Computed)
  default_action = ['list', ['object', {'authenticate_cognito': ['list', ['object', {'authentication_request_extra_params': ['map', 'string'], 'on_unauthenticated_request': 'string', 'scope': 'string', 'session_cookie_name': 'string', 'session_timeout': 'number', 'user_pool_arn': 'string', 'user_pool_client_id': 'string', 'user_pool_domain': 'string'}]], 'authenticate_oidc': ['list', ['object', {'authentication_request_extra_params': ['map', 'string'], 'authorization_endpoint': 'string', 'client_id': 'string', 'client_secret': 'string', 'issuer': 'string', 'on_unauthenticated_request': 'string', 'scope': 'string', 'session_cookie_name': 'string', 'session_timeout': 'number', 'token_endpoint': 'string', 'user_info_endpoint': 'string'}]], 'fixed_response': ['list', ['object', {'content_type': 'string', 'message_body': 'string', 'status_code': 'string'}]], 'forward': ['list', ['object', {'stickiness': ['list', ['object', {'duration': 'number', 'enabled': 'bool'}]], 'target_group': ['set', ['object', {'arn': 'string', 'weight': 'number'}]]}]], 'order': 'number', 'redirect': ['list', ['object', {'host': 'string', 'path': 'string', 'port': 'string', 'protocol': 'string', 'query': 'string', 'status_code': 'string'}]], 'target_group_arn': 'string', 'type': 'string'}]] (Computed)
  id = string (Optional, Computed)
  load_balancer_arn = string (Optional, Computed)
  mutual_authentication = ['list', ['object', {'advertise_trust_store_ca_names': 'string', 'ignore_client_certificate_expiry': 'bool', 'mode': 'string', 'trust_store_arn': 'string'}]] (Computed)
  port = number (Optional, Computed)
  protocol = string (Computed)
  region = string (Optional, Computed)
  ssl_policy = string (Computed)
  tags = ['map', 'string'] (Optional, Computed)

  timeouts block "single" (Optional) {
    read = string (Optional)
  }
}
