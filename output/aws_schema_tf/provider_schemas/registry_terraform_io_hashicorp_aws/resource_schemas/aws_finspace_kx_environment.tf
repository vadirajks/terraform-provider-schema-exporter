resource "aws_finspace_kx_environment" "name" {
  kms_key_id = string (Required)
  name = string (Required)
  arn = string (Computed)
  availability_zones = ['list', 'string'] (Computed)
  created_timestamp = string (Computed)
  description = string (Optional)
  id = string (Computed)
  infrastructure_account_id = string (Computed)
  last_modified_timestamp = string (Computed)
  region = string (Optional, Computed)
  status = string (Computed)
  tags = ['map', 'string'] (Optional)
  tags_all = ['map', 'string'] (Optional, Computed)

  custom_dns_configuration block "list" (Optional) {
    custom_dns_server_ip = string (Required)
    custom_dns_server_name = string (Required)
  }

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    update = string (Optional)
  }

  transit_gateway_configuration block "list" (Optional) {
    routable_cidr_space = string (Required)
    transit_gateway_id = string (Required)

    attachment_network_acl_configuration block "list" (Optional) {
      cidr_block = string (Required)
      protocol = string (Required)
      rule_action = string (Required)
      rule_number = number (Required)

      icmp_type_code block "list" (Optional) {
        code = number (Required)
        type = number (Required)
      }

      port_range block "list" (Optional) {
        from = number (Required)
        to = number (Required)
      }
    }
  }
}
