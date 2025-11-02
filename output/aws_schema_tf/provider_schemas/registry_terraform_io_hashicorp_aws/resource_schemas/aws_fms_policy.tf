resource "aws_fms_policy" "name" {
  exclude_resource_tags = bool (Required)
  name = string (Required)
  arn = string (Computed)
  delete_all_policy_resources = bool (Optional)
  delete_unused_fm_managed_resources = bool (Optional)
  description = string (Optional)
  id = string (Optional, Computed)
  policy_update_token = string (Computed)
  region = string (Optional, Computed)
  remediation_enabled = bool (Optional)
  resource_set_ids = ['set', 'string'] (Optional, Computed)
  resource_tag_logical_operator = string (Optional, Computed)
  resource_tags = ['map', 'string'] (Optional)
  resource_type = string (Optional, Computed)
  resource_type_list = ['set', 'string'] (Optional, Computed)
  tags = ['map', 'string'] (Optional)
  tags_all = ['map', 'string'] (Optional, Computed)

  exclude_map block "list" (Optional) {
    account = ['set', 'string'] (Optional)
    orgunit = ['set', 'string'] (Optional)
  }

  include_map block "list" (Optional) {
    account = ['set', 'string'] (Optional)
    orgunit = ['set', 'string'] (Optional)
  }

  security_service_policy_data block "list" (Required) {
    type = string (Required)
    managed_service_data = string (Optional)

    policy_option block "list" (Optional) {

      network_acl_common_policy block "list" (Optional) {

        network_acl_entry_set block "list" (Optional) {
          force_remediate_for_first_entries = bool (Required)
          force_remediate_for_last_entries = bool (Required)

          first_entry block "set" (Optional) {
            egress = bool (Required)
            protocol = string (Required)
            rule_action = string (Required)
            cidr_block = string (Optional)
            ipv6_cidr_block = string (Optional)

            icmp_type_code block "list" (Optional) {
              code = number (Optional)
              type = number (Optional)
            }

            port_range block "list" (Optional) {
              from = number (Optional)
              to = number (Optional)
            }
          }

          last_entry block "set" (Optional) {
            egress = bool (Required)
            protocol = string (Required)
            rule_action = string (Required)
            cidr_block = string (Optional)
            ipv6_cidr_block = string (Optional)

            icmp_type_code block "list" (Optional) {
              code = number (Optional)
              type = number (Optional)
            }

            port_range block "list" (Optional) {
              from = number (Optional)
              to = number (Optional)
            }
          }
        }
      }

      network_firewall_policy block "list" (Optional) {
        firewall_deployment_model = string (Optional)
      }

      third_party_firewall_policy block "list" (Optional) {
        firewall_deployment_model = string (Optional)
      }
    }
  }
}
