resource "aws_cloudwatch_event_connection" "name" {
  authorization_type = string (Required)
  name = string (Required)
  arn = string (Computed)
  description = string (Optional)
  id = string (Optional, Computed)
  kms_key_identifier = string (Optional)
  region = string (Optional, Computed)
  secret_arn = string (Computed)

  auth_parameters block "list" (Required) {

    api_key block "list" (Optional) {
      key = string (Required)
      value = string (Required)
    }

    basic block "list" (Optional) {
      password = string (Required)
      username = string (Required)
    }

    invocation_http_parameters block "list" (Optional) {

      body block "list" (Optional) {
        is_value_secret = bool (Optional)
        key = string (Optional)
        value = string (Optional)
      }

      header block "list" (Optional) {
        is_value_secret = bool (Optional)
        key = string (Optional)
        value = string (Optional)
      }

      query_string block "list" (Optional) {
        is_value_secret = bool (Optional)
        key = string (Optional)
        value = string (Optional)
      }
    }

    oauth block "list" (Optional) {
      authorization_endpoint = string (Required)
      http_method = string (Required)

      client_parameters block "list" (Optional) {
        client_id = string (Required)
        client_secret = string (Required)
      }

      oauth_http_parameters block "list" (Required) {

        body block "list" (Optional) {
          is_value_secret = bool (Optional)
          key = string (Optional)
          value = string (Optional)
        }

        header block "list" (Optional) {
          is_value_secret = bool (Optional)
          key = string (Optional)
          value = string (Optional)
        }

        query_string block "list" (Optional) {
          is_value_secret = bool (Optional)
          key = string (Optional)
          value = string (Optional)
        }
      }
    }
  }

  invocation_connectivity_parameters block "list" (Optional) {

    resource_parameters block "list" (Required) {
      resource_configuration_arn = string (Required)
      resource_association_arn = string (Computed)
    }
  }
}
