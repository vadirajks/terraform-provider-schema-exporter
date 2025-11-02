data "aws_networkmanager_core_network_policy_document" "name" {
  id = string (Optional, Computed)
  json = string (Computed)
  version = string (Optional)

  attachment_policies block "list" (Optional) {
    rule_number = number (Required)
    condition_logic = string (Optional)
    description = string (Optional)

    action block "list" (Required) {
      add_to_network_function_group = string (Optional)
      association_method = string (Optional)
      require_acceptance = bool (Optional)
      segment = string (Optional)
      tag_value_of_key = string (Optional)
    }

    conditions block "list" (Required) {
      type = string (Required)
      key = string (Optional)
      operator = string (Optional)
      value = string (Optional)
    }
  }

  core_network_configuration block "list" (Required) {
    asn_ranges = ['set', 'string'] (Required)
    dns_support = bool (Optional)
    inside_cidr_blocks = ['set', 'string'] (Optional)
    security_group_referencing_support = bool (Optional)
    vpn_ecmp_support = bool (Optional)

    edge_locations block "list" (Required) {
      location = string (Required)
      asn = string (Optional)
      inside_cidr_blocks = ['list', 'string'] (Optional)
    }
  }

  network_function_groups block "list" (Optional) {
    name = string (Required)
    require_attachment_acceptance = bool (Required)
    description = string (Optional)
  }

  segment_actions block "list" (Optional) {
    action = string (Required)
    segment = string (Required)
    description = string (Optional)
    destination_cidr_blocks = ['set', 'string'] (Optional)
    destinations = ['set', 'string'] (Optional)
    mode = string (Optional)
    share_with = ['set', 'string'] (Optional)
    share_with_except = ['set', 'string'] (Optional)

    via block "list" (Optional) {
      network_function_groups = ['set', 'string'] (Optional)

      with_edge_override block "list" (Optional) {
        edge_sets = ['set', ['set', 'string']] (Optional)
        use_edge = string (Optional)
        use_edge_location = string (Optional)
      }
    }

    when_sent_to block "list" (Optional) {
      segments = ['set', 'string'] (Optional)
    }
  }

  segments block "list" (Required) {
    name = string (Required)
    allow_filter = ['set', 'string'] (Optional)
    deny_filter = ['set', 'string'] (Optional)
    description = string (Optional)
    edge_locations = ['set', 'string'] (Optional)
    isolate_attachments = bool (Optional)
    require_attachment_acceptance = bool (Optional)
  }
}
