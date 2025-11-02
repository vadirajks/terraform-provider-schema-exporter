resource "aws_networkfirewall_rule_group" "name" {
  capacity = number (Required)
  name = string (Required)
  type = string (Required)
  arn = string (Computed)
  description = string (Optional)
  id = string (Optional, Computed)
  region = string (Optional, Computed)
  rules = string (Optional)
  tags = ['map', 'string'] (Optional)
  tags_all = ['map', 'string'] (Optional, Computed)
  update_token = string (Computed)

  encryption_configuration block "list" (Optional) {
    type = string (Required)
    key_id = string (Optional)
  }

  rule_group block "list" (Optional) {

    reference_sets block "list" (Optional) {

      ip_set_references block "set" (Optional) {
        key = string (Required)

        ip_set_reference block "list" (Required) {
          reference_arn = string (Required)
        }
      }
    }

    rule_variables block "list" (Optional) {

      ip_sets block "set" (Optional) {
        key = string (Required)

        ip_set block "list" (Required) {
          definition = ['set', 'string'] (Required)
        }
      }

      port_sets block "set" (Optional) {
        key = string (Required)

        port_set block "list" (Required) {
          definition = ['set', 'string'] (Required)
        }
      }
    }

    rules_source block "list" (Required) {
      rules_string = string (Optional)

      rules_source_list block "list" (Optional) {
        generated_rules_type = string (Required)
        target_types = ['set', 'string'] (Required)
        targets = ['set', 'string'] (Required)
      }

      stateful_rule block "list" (Optional) {
        action = string (Required)

        header block "list" (Required) {
          destination = string (Required)
          destination_port = string (Required)
          direction = string (Required)
          protocol = string (Required)
          source = string (Required)
          source_port = string (Required)
        }

        rule_option block "set" (Required) {
          keyword = string (Required)
          settings = ['set', 'string'] (Optional)
        }
      }

      stateless_rules_and_custom_actions block "list" (Optional) {

        custom_action block "set" (Optional) {
          action_name = string (Required)

          action_definition block "list" (Required) {

            publish_metric_action block "list" (Required) {

              dimension block "set" (Required) {
                value = string (Required)
              }
            }
          }
        }

        stateless_rule block "set" (Required) {
          priority = number (Required)

          rule_definition block "list" (Required) {
            actions = ['set', 'string'] (Required)

            match_attributes block "list" (Required) {
              protocols = ['set', 'number'] (Optional)

              destination block "set" (Optional) {
                address_definition = string (Required)
              }

              destination_port block "set" (Optional) {
                from_port = number (Required)
                to_port = number (Optional)
              }

              source block "set" (Optional) {
                address_definition = string (Required)
              }

              source_port block "set" (Optional) {
                from_port = number (Required)
                to_port = number (Optional)
              }

              tcp_flag block "set" (Optional) {
                flags = ['set', 'string'] (Required)
                masks = ['set', 'string'] (Optional)
              }
            }
          }
        }
      }
    }

    stateful_rule_options block "list" (Optional) {
      rule_order = string (Required)
    }
  }
}
