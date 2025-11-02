resource "aws_appflow_connector_profile" "name" {
  connection_mode = string (Required)
  connector_type = string (Required)
  name = string (Required)
  arn = string (Computed)
  connector_label = string (Optional)
  credentials_arn = string (Computed)
  id = string (Optional, Computed)
  kms_arn = string (Optional, Computed)
  region = string (Optional, Computed)

  connector_profile_config block "list" (Required) {

    connector_profile_credentials block "list" (Required) {

      amplitude block "list" (Optional) {
        api_key = string (Required)
        secret_key = string (Required)
      }

      custom_connector block "list" (Optional) {
        authentication_type = string (Required)

        api_key block "list" (Optional) {
          api_key = string (Required)
          api_secret_key = string (Optional)
        }

        basic block "list" (Optional) {
          password = string (Required)
          username = string (Required)
        }

        custom block "list" (Optional) {
          custom_authentication_type = string (Required)
          credentials_map = ['map', 'string'] (Optional)
        }

        oauth2 block "list" (Optional) {
          access_token = string (Optional)
          client_id = string (Optional)
          client_secret = string (Optional)
          refresh_token = string (Optional)

          oauth_request block "list" (Optional) {
            auth_code = string (Optional)
            redirect_uri = string (Optional)
          }
        }
      }

      datadog block "list" (Optional) {
        api_key = string (Required)
        application_key = string (Required)
      }

      dynatrace block "list" (Optional) {
        api_token = string (Required)
      }

      google_analytics block "list" (Optional) {
        client_id = string (Required)
        client_secret = string (Required)
        access_token = string (Optional)
        refresh_token = string (Optional)

        oauth_request block "list" (Optional) {
          auth_code = string (Optional)
          redirect_uri = string (Optional)
        }
      }

      honeycode block "list" (Optional) {
        access_token = string (Optional)
        refresh_token = string (Optional)

        oauth_request block "list" (Optional) {
          auth_code = string (Optional)
          redirect_uri = string (Optional)
        }
      }

      infor_nexus block "list" (Optional) {
        access_key_id = string (Required)
        datakey = string (Required)
        secret_access_key = string (Required)
        user_id = string (Required)
      }

      marketo block "list" (Optional) {
        client_id = string (Required)
        client_secret = string (Required)
        access_token = string (Optional)

        oauth_request block "list" (Optional) {
          auth_code = string (Optional)
          redirect_uri = string (Optional)
        }
      }

      redshift block "list" (Optional) {
        password = string (Required)
        username = string (Required)
      }

      salesforce block "list" (Optional) {
        access_token = string (Optional)
        client_credentials_arn = string (Optional)
        jwt_token = string (Optional)
        oauth2_grant_type = string (Optional)
        refresh_token = string (Optional)

        oauth_request block "list" (Optional) {
          auth_code = string (Optional)
          redirect_uri = string (Optional)
        }
      }

      sapo_data block "list" (Optional) {

        basic_auth_credentials block "list" (Optional) {
          password = string (Required)
          username = string (Required)
        }

        oauth_credentials block "list" (Optional) {
          client_id = string (Required)
          client_secret = string (Required)
          access_token = string (Optional)
          refresh_token = string (Optional)

          oauth_request block "list" (Optional) {
            auth_code = string (Optional)
            redirect_uri = string (Optional)
          }
        }
      }

      service_now block "list" (Optional) {
        password = string (Required)
        username = string (Required)
      }

      singular block "list" (Optional) {
        api_key = string (Required)
      }

      slack block "list" (Optional) {
        client_id = string (Required)
        client_secret = string (Required)
        access_token = string (Optional)

        oauth_request block "list" (Optional) {
          auth_code = string (Optional)
          redirect_uri = string (Optional)
        }
      }

      snowflake block "list" (Optional) {
        password = string (Required)
        username = string (Required)
      }

      trendmicro block "list" (Optional) {
        api_secret_key = string (Required)
      }

      veeva block "list" (Optional) {
        password = string (Required)
        username = string (Required)
      }

      zendesk block "list" (Optional) {
        client_id = string (Required)
        client_secret = string (Required)
        access_token = string (Optional)

        oauth_request block "list" (Optional) {
          auth_code = string (Optional)
          redirect_uri = string (Optional)
        }
      }
    }

    connector_profile_properties block "list" (Required) {

      amplitude block "list" (Optional) {
      }

      custom_connector block "list" (Optional) {
        profile_properties = ['map', 'string'] (Optional)

        oauth2_properties block "list" (Optional) {
          oauth2_grant_type = string (Required)
          token_url = string (Required)
          token_url_custom_properties = ['map', 'string'] (Optional)
        }
      }

      datadog block "list" (Optional) {
        instance_url = string (Required)
      }

      dynatrace block "list" (Optional) {
        instance_url = string (Required)
      }

      google_analytics block "list" (Optional) {
      }

      honeycode block "list" (Optional) {
      }

      infor_nexus block "list" (Optional) {
        instance_url = string (Required)
      }

      marketo block "list" (Optional) {
        instance_url = string (Required)
      }

      redshift block "list" (Optional) {
        bucket_name = string (Required)
        role_arn = string (Required)
        bucket_prefix = string (Optional)
        cluster_identifier = string (Optional)
        data_api_role_arn = string (Optional)
        database_name = string (Optional)
        database_url = string (Optional)
      }

      salesforce block "list" (Optional) {
        instance_url = string (Optional)
        is_sandbox_environment = bool (Optional)
        use_privatelink_for_metadata_and_authorization = bool (Optional)
      }

      sapo_data block "list" (Optional) {
        application_host_url = string (Required)
        application_service_path = string (Required)
        client_number = string (Required)
        port_number = number (Required)
        logon_language = string (Optional)
        private_link_service_name = string (Optional)

        oauth_properties block "list" (Optional) {
          auth_code_url = string (Required)
          oauth_scopes = ['list', 'string'] (Required)
          token_url = string (Required)
        }
      }

      service_now block "list" (Optional) {
        instance_url = string (Required)
      }

      singular block "list" (Optional) {
      }

      slack block "list" (Optional) {
        instance_url = string (Required)
      }

      snowflake block "list" (Optional) {
        bucket_name = string (Required)
        stage = string (Required)
        warehouse = string (Required)
        account_name = string (Optional)
        bucket_prefix = string (Optional)
        private_link_service_name = string (Optional)
        region = string (Optional)
      }

      trendmicro block "list" (Optional) {
      }

      veeva block "list" (Optional) {
        instance_url = string (Required)
      }

      zendesk block "list" (Optional) {
        instance_url = string (Required)
      }
    }
  }
}
