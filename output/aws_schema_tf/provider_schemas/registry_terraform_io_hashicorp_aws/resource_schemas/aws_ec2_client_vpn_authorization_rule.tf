resource "aws_ec2_client_vpn_authorization_rule" "name" {
  client_vpn_endpoint_id = string (Required)
  target_network_cidr = string (Required)
  access_group_id = string (Optional)
  authorize_all_groups = bool (Optional)
  description = string (Optional)
  id = string (Optional, Computed)
  region = string (Optional, Computed)

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
  }
}
