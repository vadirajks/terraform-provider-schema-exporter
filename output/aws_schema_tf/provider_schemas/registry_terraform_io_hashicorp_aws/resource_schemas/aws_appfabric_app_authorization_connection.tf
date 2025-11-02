resource "aws_appfabric_app_authorization_connection" "name" {
  app_authorization_arn = string (Required)
  app_bundle_arn = string (Required)
  app = string (Computed)
  id = string (Computed)
  region = string (Optional, Computed)
  tenant = ['list', ['object', {'tenant_display_name': 'string', 'tenant_identifier': 'string'}]] (Computed)

  auth_request block "list" (Optional) {
    code = string (Required)
    redirect_uri = string (Required)
  }

  timeouts block "single" (Optional) {
    create = string (Optional)
  }
}
