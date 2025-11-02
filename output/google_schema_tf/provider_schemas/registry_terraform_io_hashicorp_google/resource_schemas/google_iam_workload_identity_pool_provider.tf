resource "google_iam_workload_identity_pool_provider" "name" {
  workload_identity_pool_id = string (Required)
  workload_identity_pool_provider_id = string (Required)
  attribute_condition = string (Optional)
  attribute_mapping = ['map', 'string'] (Optional)
  description = string (Optional)
  disabled = bool (Optional)
  display_name = string (Optional)
  id = string (Optional, Computed)
  name = string (Computed)
  project = string (Optional, Computed)
  state = string (Computed)

  aws block "list" (Optional) {
    account_id = string (Required)
  }

  oidc block "list" (Optional) {
    issuer_uri = string (Required)
    allowed_audiences = ['list', 'string'] (Optional)
    jwks_json = string (Optional)
  }

  saml block "list" (Optional) {
    idp_metadata_xml = string (Required)
  }

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    update = string (Optional)
  }

  x509 block "list" (Optional) {

    trust_store block "list" (Required) {

      intermediate_cas block "list" (Optional) {
        pem_certificate = string (Optional)
      }

      trust_anchors block "list" (Required) {
        pem_certificate = string (Optional)
      }
    }
  }
}
