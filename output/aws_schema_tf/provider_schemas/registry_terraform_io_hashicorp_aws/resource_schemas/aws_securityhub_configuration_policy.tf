resource "aws_securityhub_configuration_policy" "name" {
  name = string (Required)
  arn = string (Computed)
  description = string (Optional)
  id = string (Optional, Computed)
  region = string (Optional, Computed)

  configuration_policy block "list" (Required) {
    service_enabled = bool (Required)
    enabled_standard_arns = ['set', 'string'] (Optional)

    security_controls_configuration block "list" (Optional) {
      disabled_control_identifiers = ['set', 'string'] (Optional)
      enabled_control_identifiers = ['set', 'string'] (Optional)

      security_control_custom_parameter block "list" (Optional) {
        security_control_id = string (Required)

        parameter block "set" (Required) {
          name = string (Required)
          value_type = string (Required)

          bool block "list" (Optional) {
            value = bool (Required)
          }

          double block "list" (Optional) {
            value = number (Required)
          }

          enum block "list" (Optional) {
            value = string (Required)
          }

          enum_list block "list" (Optional) {
            value = ['list', 'string'] (Required)
          }

          int block "list" (Optional) {
            value = number (Required)
          }

          int_list block "list" (Optional) {
            value = ['list', 'number'] (Required)
          }

          string block "list" (Optional) {
            value = string (Required)
          }

          string_list block "list" (Optional) {
            value = ['list', 'string'] (Required)
          }
        }
      }
    }
  }
}
