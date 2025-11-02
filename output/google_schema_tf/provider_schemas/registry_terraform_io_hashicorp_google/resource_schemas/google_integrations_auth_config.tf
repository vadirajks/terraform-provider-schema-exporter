resource "google_integrations_auth_config" "name" {
  display_name = string (Required)
  location = string (Required)
  certificate_id = string (Computed)
  create_time = string (Computed)
  creator_email = string (Computed)
  credential_type = string (Computed)
  description = string (Optional)
  encrypted_credential = string (Computed)
  expiry_notification_duration = ['list', 'string'] (Optional)
  id = string (Optional, Computed)
  last_modifier_email = string (Computed)
  name = string (Computed)
  override_valid_time = string (Optional)
  project = string (Optional, Computed)
  reason = string (Computed)
  state = string (Computed)
  update_time = string (Computed)
  valid_time = string (Computed)
  visibility = string (Optional)

  client_certificate block "list" (Optional) {
    encrypted_private_key = string (Required)
    ssl_certificate = string (Required)
    passphrase = string (Optional)
  }

  decrypted_credential block "list" (Optional) {
    credential_type = string (Required)

    auth_token block "list" (Optional) {
      token = string (Optional)
      type = string (Optional)
    }

    jwt block "list" (Optional) {
      jwt = string (Computed)
      jwt_header = string (Optional)
      jwt_payload = string (Optional)
      secret = string (Optional)
    }

    oauth2_authorization_code block "list" (Optional) {
      auth_endpoint = string (Optional)
      client_id = string (Optional)
      client_secret = string (Optional)
      scope = string (Optional)
      token_endpoint = string (Optional)
    }

    oauth2_client_credentials block "list" (Optional) {
      client_id = string (Optional)
      client_secret = string (Optional)
      request_type = string (Optional)
      scope = string (Optional)
      token_endpoint = string (Optional)

      token_params block "list" (Optional) {

        entries block "list" (Optional) {

          key block "list" (Optional) {

            literal_value block "list" (Optional) {
              string_value = string (Optional)
            }
          }

          value block "list" (Optional) {

            literal_value block "list" (Optional) {
              string_value = string (Optional)
            }
          }
        }
      }
    }

    oidc_token block "list" (Optional) {
      audience = string (Optional)
      service_account_email = string (Optional)
      token = string (Computed)
      token_expire_time = string (Computed)
    }

    service_account_credentials block "list" (Optional) {
      scope = string (Optional)
      service_account = string (Optional)
    }

    username_and_password block "list" (Optional) {
      password = string (Optional)
      username = string (Optional)
    }
  }

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    update = string (Optional)
  }
}
