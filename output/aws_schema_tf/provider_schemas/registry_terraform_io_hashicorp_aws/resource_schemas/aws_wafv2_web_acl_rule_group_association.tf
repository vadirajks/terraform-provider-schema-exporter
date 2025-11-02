resource "aws_wafv2_web_acl_rule_group_association" "name" {
  priority = number (Required)
  rule_name = string (Required)
  web_acl_arn = string (Required)
  override_action = string (Optional, Computed)
  region = string (Optional, Computed)

  managed_rule_group block "list" (Optional) {
    name = string (Required)
    vendor_name = string (Required)
    version = string (Optional)

    rule_action_override block "list" (Optional) {
      name = string (Required)

      action_to_use block "list" (Optional) {

        allow block "list" (Optional) {

          custom_request_handling block "list" (Optional) {

            insert_header block "list" (Optional) {
              name = string (Required)
              value = string (Required)
            }
          }
        }

        block block "list" (Optional) {

          custom_response block "list" (Optional) {
            response_code = number (Required)
            custom_response_body_key = string (Optional)

            response_header block "list" (Optional) {
              name = string (Required)
              value = string (Required)
            }
          }
        }

        captcha block "list" (Optional) {

          custom_request_handling block "list" (Optional) {

            insert_header block "list" (Optional) {
              name = string (Required)
              value = string (Required)
            }
          }
        }

        challenge block "list" (Optional) {

          custom_request_handling block "list" (Optional) {

            insert_header block "list" (Optional) {
              name = string (Required)
              value = string (Required)
            }
          }
        }

        count block "list" (Optional) {

          custom_request_handling block "list" (Optional) {

            insert_header block "list" (Optional) {
              name = string (Required)
              value = string (Required)
            }
          }
        }
      }
    }
  }

  rule_group_reference block "list" (Optional) {
    arn = string (Required)

    rule_action_override block "list" (Optional) {
      name = string (Required)

      action_to_use block "list" (Optional) {

        allow block "list" (Optional) {

          custom_request_handling block "list" (Optional) {

            insert_header block "list" (Optional) {
              name = string (Required)
              value = string (Required)
            }
          }
        }

        block block "list" (Optional) {

          custom_response block "list" (Optional) {
            response_code = number (Required)
            custom_response_body_key = string (Optional)

            response_header block "list" (Optional) {
              name = string (Required)
              value = string (Required)
            }
          }
        }

        captcha block "list" (Optional) {

          custom_request_handling block "list" (Optional) {

            insert_header block "list" (Optional) {
              name = string (Required)
              value = string (Required)
            }
          }
        }

        challenge block "list" (Optional) {

          custom_request_handling block "list" (Optional) {

            insert_header block "list" (Optional) {
              name = string (Required)
              value = string (Required)
            }
          }
        }

        count block "list" (Optional) {

          custom_request_handling block "list" (Optional) {

            insert_header block "list" (Optional) {
              name = string (Required)
              value = string (Required)
            }
          }
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
