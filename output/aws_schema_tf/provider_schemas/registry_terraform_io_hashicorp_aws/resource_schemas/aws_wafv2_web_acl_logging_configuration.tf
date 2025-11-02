resource "aws_wafv2_web_acl_logging_configuration" "name" {
  log_destination_configs = ['set', 'string'] (Required)
  resource_arn = string (Required)
  id = string (Optional, Computed)
  region = string (Optional, Computed)

  logging_filter block "list" (Optional) {
    default_behavior = string (Required)

    filter block "set" (Required) {
      behavior = string (Required)
      requirement = string (Required)

      condition block "set" (Required) {

        action_condition block "list" (Optional) {
          action = string (Required)
        }

        label_name_condition block "list" (Optional) {
          label_name = string (Required)
        }
      }
    }
  }

  redacted_fields block "list" (Optional) {

    method block "list" (Optional) {
    }

    query_string block "list" (Optional) {
    }

    single_header block "list" (Optional) {
      name = string (Required)
    }

    uri_path block "list" (Optional) {
    }
  }
}
