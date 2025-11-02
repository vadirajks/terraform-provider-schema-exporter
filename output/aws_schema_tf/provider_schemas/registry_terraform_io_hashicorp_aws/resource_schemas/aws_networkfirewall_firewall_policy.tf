resource "aws_networkfirewall_firewall_policy" "name" {
  name = string (Required)
  arn = string (Computed)
  description = string (Optional)
  id = string (Optional, Computed)
  region = string (Optional, Computed)
  tags = ['map', 'string'] (Optional)
  tags_all = ['map', 'string'] (Optional, Computed)
  update_token = string (Computed)

  encryption_configuration block "list" (Optional) {
    type = string (Required)
    key_id = string (Optional)
  }

  firewall_policy block "list" (Required) {
    stateless_default_actions = ['set', 'string'] (Required)
    stateless_fragment_default_actions = ['set', 'string'] (Required)
    stateful_default_actions = ['set', 'string'] (Optional)
    tls_inspection_configuration_arn = string (Optional)

    policy_variables block "list" (Optional) {

      rule_variables block "set" (Optional) {
        key = string (Required)

        ip_set block "list" (Required) {
          definition = ['set', 'string'] (Required)
        }
      }
    }

    stateful_engine_options block "list" (Optional) {
      rule_order = string (Optional)
      stream_exception_policy = string (Optional)

      flow_timeouts block "list" (Optional) {
        tcp_idle_timeout_seconds = number (Optional)
      }
    }

    stateful_rule_group_reference block "set" (Optional) {
      resource_arn = string (Required)
      deep_threat_inspection = string (Optional, Computed)
      priority = number (Optional)

      override block "list" (Optional) {
        action = string (Optional)
      }
    }

    stateless_custom_action block "set" (Optional) {
      action_name = string (Required)

      action_definition block "list" (Required) {

        publish_metric_action block "list" (Required) {

          dimension block "set" (Required) {
            value = string (Required)
          }
        }
      }
    }

    stateless_rule_group_reference block "set" (Optional) {
      priority = number (Required)
      resource_arn = string (Required)
    }
  }
}
