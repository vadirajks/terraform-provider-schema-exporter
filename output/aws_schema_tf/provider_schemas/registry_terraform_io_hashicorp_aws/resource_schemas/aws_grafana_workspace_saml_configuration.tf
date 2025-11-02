resource "aws_grafana_workspace_saml_configuration" "name" {
  editor_role_values = ['list', 'string'] (Required)
  workspace_id = string (Required)
  admin_role_values = ['list', 'string'] (Optional)
  allowed_organizations = ['list', 'string'] (Optional)
  email_assertion = string (Optional, Computed)
  groups_assertion = string (Optional)
  id = string (Optional, Computed)
  idp_metadata_url = string (Optional)
  idp_metadata_xml = string (Optional)
  login_assertion = string (Optional, Computed)
  login_validity_duration = number (Optional, Computed)
  name_assertion = string (Optional, Computed)
  org_assertion = string (Optional)
  region = string (Optional, Computed)
  role_assertion = string (Optional)
  status = string (Computed)

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
  }
}
