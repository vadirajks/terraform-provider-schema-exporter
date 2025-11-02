resource "aws_bedrockagentcore_oauth2_credential_provider" "name" {
  credential_provider_vendor = string (Required)
  name = string (Required)
  client_secret_arn = ['list', ['object', {'secret_arn': 'string'}]] (Computed)
  credential_provider_arn = string (Computed)
  region = string (Optional, Computed)

  oauth2_provider_config block "list" (Optional) {

    custom_oauth2_provider_config block "list" (Optional) {
      client_credentials_wo_version = number (Optional)
      client_id = string (Optional)
      client_id_wo = string (Optional)
      client_secret = string (Optional)
      client_secret_wo = string (Optional)

      oauth_discovery block "list" (Optional) {
        discovery_url = string (Optional)

        authorization_server_metadata block "list" (Optional) {
          authorization_endpoint = string (Required)
          issuer = string (Required)
          token_endpoint = string (Required)
          response_types = ['set', 'string'] (Optional)
        }
      }
    }

    github_oauth2_provider_config block "list" (Optional) {
      client_credentials_wo_version = number (Optional)
      client_id = string (Optional)
      client_id_wo = string (Optional)
      client_secret = string (Optional)
      client_secret_wo = string (Optional)
      oauth_discovery = ['list', ['object', {'authorization_server_metadata': ['list', ['object', {'authorization_endpoint': 'string', 'issuer': 'string', 'response_types': ['set', 'string'], 'token_endpoint': 'string'}]], 'discovery_url': 'string'}]] (Computed)
    }

    google_oauth2_provider_config block "list" (Optional) {
      client_credentials_wo_version = number (Optional)
      client_id = string (Optional)
      client_id_wo = string (Optional)
      client_secret = string (Optional)
      client_secret_wo = string (Optional)
      oauth_discovery = ['list', ['object', {'authorization_server_metadata': ['list', ['object', {'authorization_endpoint': 'string', 'issuer': 'string', 'response_types': ['set', 'string'], 'token_endpoint': 'string'}]], 'discovery_url': 'string'}]] (Computed)
    }

    microsoft_oauth2_provider_config block "list" (Optional) {
      client_credentials_wo_version = number (Optional)
      client_id = string (Optional)
      client_id_wo = string (Optional)
      client_secret = string (Optional)
      client_secret_wo = string (Optional)
      oauth_discovery = ['list', ['object', {'authorization_server_metadata': ['list', ['object', {'authorization_endpoint': 'string', 'issuer': 'string', 'response_types': ['set', 'string'], 'token_endpoint': 'string'}]], 'discovery_url': 'string'}]] (Computed)
    }

    salesforce_oauth2_provider_config block "list" (Optional) {
      client_credentials_wo_version = number (Optional)
      client_id = string (Optional)
      client_id_wo = string (Optional)
      client_secret = string (Optional)
      client_secret_wo = string (Optional)
      oauth_discovery = ['list', ['object', {'authorization_server_metadata': ['list', ['object', {'authorization_endpoint': 'string', 'issuer': 'string', 'response_types': ['set', 'string'], 'token_endpoint': 'string'}]], 'discovery_url': 'string'}]] (Computed)
    }

    slack_oauth2_provider_config block "list" (Optional) {
      client_credentials_wo_version = number (Optional)
      client_id = string (Optional)
      client_id_wo = string (Optional)
      client_secret = string (Optional)
      client_secret_wo = string (Optional)
      oauth_discovery = ['list', ['object', {'authorization_server_metadata': ['list', ['object', {'authorization_endpoint': 'string', 'issuer': 'string', 'response_types': ['set', 'string'], 'token_endpoint': 'string'}]], 'discovery_url': 'string'}]] (Computed)
    }
  }
}
