resource "aws_ec2_client_vpn_endpoint" "name" {
  server_certificate_arn = string (Required)
  arn = string (Computed)
  client_cidr_block = string (Optional)
  description = string (Optional)
  disconnect_on_session_timeout = bool (Optional, Computed)
  dns_name = string (Computed)
  dns_servers = ['list', 'string'] (Optional)
  endpoint_ip_address_type = string (Optional, Computed)
  id = string (Optional, Computed)
  region = string (Optional, Computed)
  security_group_ids = ['set', 'string'] (Optional, Computed)
  self_service_portal = string (Optional)
  self_service_portal_url = string (Computed)
  session_timeout_hours = number (Optional)
  split_tunnel = bool (Optional)
  tags = ['map', 'string'] (Optional)
  tags_all = ['map', 'string'] (Optional, Computed)
  traffic_ip_address_type = string (Optional, Computed)
  transport_protocol = string (Optional)
  vpc_id = string (Optional, Computed)
  vpn_port = number (Optional)

  authentication_options block "set" (Required) {
    type = string (Required)
    active_directory_id = string (Optional)
    root_certificate_chain_arn = string (Optional)
    saml_provider_arn = string (Optional)
    self_service_saml_provider_arn = string (Optional)
  }

  client_connect_options block "list" (Optional) {
    enabled = bool (Optional, Computed)
    lambda_function_arn = string (Optional, Computed)
  }

  client_login_banner_options block "list" (Optional) {
    banner_text = string (Optional, Computed)
    enabled = bool (Optional, Computed)
  }

  client_route_enforcement_options block "list" (Optional) {
    enforced = bool (Optional, Computed)
  }

  connection_log_options block "list" (Required) {
    enabled = bool (Required)
    cloudwatch_log_group = string (Optional)
    cloudwatch_log_stream = string (Optional, Computed)
  }
}
