resource "aws_appfabric_app_authorization" "name" {
  app = string (Required)
  app_bundle_arn = string (Required)
  auth_type = string (Required)
  arn = string (Computed)
  auth_url = string (Computed)
  created_at = string (Computed)
  id = string (Computed)
  persona = string (Computed)
  region = string (Optional, Computed)
  tags = ['map', 'string'] (Optional)
  tags_all = ['map', 'string'] (Computed)
  updated_at = string (Computed)

  credential block "list" (Optional) {

    api_key_credential block "list" (Optional) {
      api_key = string (Required)
    }

    oauth2_credential block "list" (Optional) {
      client_id = string (Required)
      client_secret = string (Required)
    }
  }

  tenant block "list" (Optional) {
    tenant_display_name = string (Required)
    tenant_identifier = string (Required)
  }

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    update = string (Optional)
  }
}
