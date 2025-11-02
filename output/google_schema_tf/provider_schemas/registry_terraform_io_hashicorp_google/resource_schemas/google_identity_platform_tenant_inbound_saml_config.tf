resource "google_identity_platform_tenant_inbound_saml_config" "name" {
  display_name = string (Required)
  name = string (Required)
  tenant = string (Required)
  enabled = bool (Optional)
  id = string (Optional, Computed)
  project = string (Optional, Computed)

  idp_config block "list" (Required) {
    idp_entity_id = string (Required)
    sso_url = string (Required)
    sign_request = bool (Optional)

    idp_certificates block "list" (Required) {
      x509_certificate = string (Optional)
    }
  }

  sp_config block "list" (Required) {
    callback_uri = string (Required)
    sp_entity_id = string (Required)
    sp_certificates = ['list', ['object', {'x509_certificate': 'string'}]] (Computed)
  }

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    update = string (Optional)
  }
}
