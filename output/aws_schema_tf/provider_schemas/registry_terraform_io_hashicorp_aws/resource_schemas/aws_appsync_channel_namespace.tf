resource "aws_appsync_channel_namespace" "name" {
  api_id = string (Required)
  name = string (Required)
  channel_namespace_arn = string (Computed)
  code_handlers = string (Optional)
  region = string (Optional, Computed)
  tags = ['map', 'string'] (Optional)
  tags_all = ['map', 'string'] (Computed)

  handler_configs block "list" (Optional) {

    on_publish block "list" (Optional) {
      behavior = string (Required)

      integration block "list" (Optional) {
        data_source_name = string (Required)

        lambda_config block "list" (Optional) {
          invoke_type = string (Optional)
        }
      }
    }

    on_subscribe block "list" (Optional) {
      behavior = string (Required)

      integration block "list" (Optional) {
        data_source_name = string (Required)

        lambda_config block "list" (Optional) {
          invoke_type = string (Optional)
        }
      }
    }
  }

  publish_auth_mode block "list" (Optional) {
    auth_type = string (Required)
  }

  subscribe_auth_mode block "list" (Optional) {
    auth_type = string (Required)
  }
}
