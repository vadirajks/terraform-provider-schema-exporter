resource "google_iam_workforce_pool_provider" "name" {
  location = string (Required)
  provider_id = string (Required)
  workforce_pool_id = string (Required)
  attribute_condition = string (Optional)
  attribute_mapping = ['map', 'string'] (Optional)
  description = string (Optional)
  disabled = bool (Optional)
  display_name = string (Optional)
  id = string (Optional, Computed)
  name = string (Computed)
  scim_usage = string (Optional)
  state = string (Computed)

  extended_attributes_oauth2_client block "list" (Optional) {
    attributes_type = string (Required)
    client_id = string (Required)
    issuer_uri = string (Required)

    client_secret block "list" (Required) {

      value block "list" (Optional) {
        plain_text = string (Required)
        thumbprint = string (Computed)
      }
    }

    query_parameters block "list" (Optional) {
      filter = string (Optional)
    }
  }

  extra_attributes_oauth2_client block "list" (Optional) {
    attributes_type = string (Required)
    client_id = string (Required)
    issuer_uri = string (Required)

    client_secret block "list" (Required) {

      value block "list" (Optional) {
        plain_text = string (Required)
        thumbprint = string (Computed)
      }
    }

    query_parameters block "list" (Optional) {
      filter = string (Optional)
    }
  }

  oidc block "list" (Optional) {
    client_id = string (Required)
    issuer_uri = string (Required)
    jwks_json = string (Optional)

    client_secret block "list" (Optional) {

      value block "list" (Optional) {
        plain_text = string (Required)
        thumbprint = string (Computed)
      }
    }

    web_sso_config block "list" (Optional) {
      assertion_claims_behavior = string (Required)
      response_type = string (Required)
      additional_scopes = ['list', 'string'] (Optional)
    }
  }

  saml block "list" (Optional) {
    idp_metadata_xml = string (Required)
  }

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    update = string (Optional)
  }
}
