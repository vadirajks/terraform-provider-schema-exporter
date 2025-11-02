data "aws_ec2_client_vpn_endpoint" "name" {
  arn = string (Computed)
  authentication_options = ['list', ['object', {'active_directory_id': 'string', 'root_certificate_chain_arn': 'string', 'saml_provider_arn': 'string', 'self_service_saml_provider_arn': 'string', 'type': 'string'}]] (Computed)
  client_cidr_block = string (Computed)
  client_connect_options = ['list', ['object', {'enabled': 'bool', 'lambda_function_arn': 'string'}]] (Computed)
  client_login_banner_options = ['list', ['object', {'banner_text': 'string', 'enabled': 'bool'}]] (Computed)
  client_route_enforcement_options = ['list', ['object', {'enforced': 'bool'}]] (Computed)
  client_vpn_endpoint_id = string (Optional, Computed)
  connection_log_options = ['list', ['object', {'cloudwatch_log_group': 'string', 'cloudwatch_log_stream': 'string', 'enabled': 'bool'}]] (Computed)
  description = string (Computed)
  dns_name = string (Computed)
  dns_servers = ['list', 'string'] (Computed)
  endpoint_ip_address_type = string (Computed)
  id = string (Optional, Computed)
  region = string (Optional, Computed)
  security_group_ids = ['list', 'string'] (Computed)
  self_service_portal = string (Computed)
  self_service_portal_url = string (Computed)
  server_certificate_arn = string (Computed)
  session_timeout_hours = number (Computed)
  split_tunnel = bool (Computed)
  tags = ['map', 'string'] (Optional, Computed)
  traffic_ip_address_type = string (Computed)
  transport_protocol = string (Computed)
  vpc_id = string (Computed)
  vpn_port = number (Computed)

  filter block "set" (Optional) {
    name = string (Required)
    values = ['set', 'string'] (Required)
  }

  timeouts block "single" (Optional) {
    read = string (Optional)
  }
}
