resource "google_securityposture_posture" "name" {
  location = string (Required)
  parent = string (Required)
  posture_id = string (Required)
  state = string (Required)
  create_time = string (Computed)
  description = string (Optional)
  etag = string (Computed)
  id = string (Optional, Computed)
  name = string (Computed)
  reconciling = bool (Computed)
  revision_id = string (Computed)
  update_time = string (Computed)

  policy_sets block "list" (Required) {
    policy_set_id = string (Required)
    description = string (Optional)

    policies block "list" (Required) {
      policy_id = string (Required)
      description = string (Optional)

      compliance_standards block "list" (Optional) {
        control = string (Optional)
        standard = string (Optional)
      }

      constraint block "list" (Required) {

        org_policy_constraint block "list" (Optional) {
          canned_constraint_id = string (Required)

          policy_rules block "list" (Required) {
            allow_all = bool (Optional)
            deny_all = bool (Optional)
            enforce = bool (Optional)

            condition block "list" (Optional) {
              expression = string (Required)
              description = string (Optional)
              location = string (Optional)
              title = string (Optional)
            }

            values block "list" (Optional) {
              allowed_values = ['list', 'string'] (Optional)
              denied_values = ['list', 'string'] (Optional)
            }
          }
        }

        org_policy_constraint_custom block "list" (Optional) {

          custom_constraint block "list" (Optional) {
            action_type = string (Required)
            condition = string (Required)
            method_types = ['list', 'string'] (Required)
            name = string (Required)
            resource_types = ['list', 'string'] (Required)
            description = string (Optional)
            display_name = string (Optional)
          }

          policy_rules block "list" (Required) {
            allow_all = bool (Optional)
            deny_all = bool (Optional)
            enforce = bool (Optional)

            condition block "list" (Optional) {
              expression = string (Required)
              description = string (Optional)
              location = string (Optional)
              title = string (Optional)
            }

            values block "list" (Optional) {
              allowed_values = ['list', 'string'] (Optional)
              denied_values = ['list', 'string'] (Optional)
            }
          }
        }

        security_health_analytics_custom_module block "list" (Optional) {
          display_name = string (Optional)
          id = string (Computed)
          module_enablement_state = string (Optional)

          config block "list" (Required) {
            severity = string (Required)
            description = string (Optional)
            recommendation = string (Optional)

            custom_output block "list" (Optional) {

              properties block "list" (Optional) {
                name = string (Required)

                value_expression block "list" (Optional) {
                  expression = string (Required)
                  description = string (Optional)
                  location = string (Optional)
                  title = string (Optional)
                }
              }
            }

            predicate block "list" (Required) {
              expression = string (Required)
              description = string (Optional)
              location = string (Optional)
              title = string (Optional)
            }

            resource_selector block "list" (Required) {
              resource_types = ['list', 'string'] (Required)
            }
          }
        }

        security_health_analytics_module block "list" (Optional) {
          module_name = string (Required)
          module_enablement_state = string (Optional)
        }
      }
    }
  }

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    update = string (Optional)
  }
}
