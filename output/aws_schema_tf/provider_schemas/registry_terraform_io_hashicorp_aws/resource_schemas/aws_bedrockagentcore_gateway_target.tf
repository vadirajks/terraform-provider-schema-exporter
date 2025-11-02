resource "aws_bedrockagentcore_gateway_target" "name" {
  gateway_identifier = string (Required)
  name = string (Required)
  description = string (Optional)
  region = string (Optional, Computed)
  target_id = string (Computed)

  credential_provider_configuration block "list" (Optional) {

    api_key block "list" (Optional) {
      provider_arn = string (Required)
      credential_location = string (Optional)
      credential_parameter_name = string (Optional)
      credential_prefix = string (Optional)
    }

    gateway_iam_role block "list" (Optional) {
    }

    oauth block "list" (Optional) {
      provider_arn = string (Required)
      scopes = ['set', 'string'] (Required)
      custom_parameters = ['map', 'string'] (Optional)
    }
  }

  target_configuration block "list" (Optional) {

    mcp block "list" (Optional) {

      lambda block "list" (Optional) {
        lambda_arn = string (Required)

        tool_schema block "list" (Optional) {

          inline_payload block "list" (Optional) {
            description = string (Required)
            name = string (Required)

            input_schema block "list" (Optional) {
              type = string (Required)
              description = string (Optional)

              items block "list" (Optional) {
                type = string (Required)
                description = string (Optional)

                items block "list" (Optional) {
                  type = string (Required)
                  description = string (Optional)
                  items_json = string (Optional)
                  properties_json = string (Optional)
                }

                property block "set" (Optional) {
                  name = string (Required)
                  type = string (Required)
                  description = string (Optional)
                  items_json = string (Optional)
                  properties_json = string (Optional)
                  required = bool (Optional, Computed)
                }
              }

              property block "set" (Optional) {
                name = string (Required)
                type = string (Required)
                description = string (Optional)
                required = bool (Optional, Computed)

                items block "list" (Optional) {
                  type = string (Required)
                  description = string (Optional)

                  items block "list" (Optional) {
                    type = string (Required)
                    description = string (Optional)
                    items_json = string (Optional)
                    properties_json = string (Optional)
                  }

                  property block "set" (Optional) {
                    name = string (Required)
                    type = string (Required)
                    description = string (Optional)
                    items_json = string (Optional)
                    properties_json = string (Optional)
                    required = bool (Optional, Computed)
                  }
                }

                property block "set" (Optional) {
                  name = string (Required)
                  type = string (Required)
                  description = string (Optional)
                  items_json = string (Optional)
                  properties_json = string (Optional)
                  required = bool (Optional, Computed)
                }
              }
            }

            output_schema block "list" (Optional) {
              type = string (Required)
              description = string (Optional)

              items block "list" (Optional) {
                type = string (Required)
                description = string (Optional)

                items block "list" (Optional) {
                  type = string (Required)
                  description = string (Optional)
                  items_json = string (Optional)
                  properties_json = string (Optional)
                }

                property block "set" (Optional) {
                  name = string (Required)
                  type = string (Required)
                  description = string (Optional)
                  items_json = string (Optional)
                  properties_json = string (Optional)
                  required = bool (Optional, Computed)
                }
              }

              property block "set" (Optional) {
                name = string (Required)
                type = string (Required)
                description = string (Optional)
                required = bool (Optional, Computed)

                items block "list" (Optional) {
                  type = string (Required)
                  description = string (Optional)

                  items block "list" (Optional) {
                    type = string (Required)
                    description = string (Optional)
                    items_json = string (Optional)
                    properties_json = string (Optional)
                  }

                  property block "set" (Optional) {
                    name = string (Required)
                    type = string (Required)
                    description = string (Optional)
                    items_json = string (Optional)
                    properties_json = string (Optional)
                    required = bool (Optional, Computed)
                  }
                }

                property block "set" (Optional) {
                  name = string (Required)
                  type = string (Required)
                  description = string (Optional)
                  items_json = string (Optional)
                  properties_json = string (Optional)
                  required = bool (Optional, Computed)
                }
              }
            }
          }

          s3 block "list" (Optional) {
            bucket_owner_account_id = string (Optional)
            uri = string (Optional)
          }
        }
      }

      open_api_schema block "list" (Optional) {

        inline_payload block "list" (Optional) {
          payload = string (Required)
        }

        s3 block "list" (Optional) {
          bucket_owner_account_id = string (Optional)
          uri = string (Optional)
        }
      }

      smithy_model block "list" (Optional) {

        inline_payload block "list" (Optional) {
          payload = string (Required)
        }

        s3 block "list" (Optional) {
          bucket_owner_account_id = string (Optional)
          uri = string (Optional)
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
