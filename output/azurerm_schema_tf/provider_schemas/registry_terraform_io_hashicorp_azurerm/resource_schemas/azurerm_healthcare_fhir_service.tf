resource "azurerm_healthcare_fhir_service" "name" {
  location = string (Required)
  name = string (Required)
  resource_group_name = string (Required)
  workspace_id = string (Required)
  access_policy_object_ids = ['set', 'string'] (Optional)
  configuration_export_storage_account_name = string (Optional)
  container_registry_login_server_url = ['set', 'string'] (Optional)
  id = string (Optional, Computed)
  kind = string (Optional)
  public_network_access_enabled = bool (Computed)
  tags = ['map', 'string'] (Optional)

  authentication block "list" (Required) {
    audience = string (Required)
    authority = string (Required)
    smart_proxy_enabled = bool (Optional)
  }

  cors block "list" (Optional) {
    allowed_headers = ['set', 'string'] (Required)
    allowed_methods = ['set', 'string'] (Required)
    allowed_origins = ['set', 'string'] (Required)
    credentials_allowed = bool (Optional)
    max_age_in_seconds = number (Optional)
  }

  identity block "list" (Optional) {
    type = string (Required)
    identity_ids = ['set', 'string'] (Optional)
    principal_id = string (Computed)
    tenant_id = string (Computed)
  }

  oci_artifact block "list" (Optional) {
    login_server = string (Required)
    digest = string (Optional)
    image_name = string (Optional)
  }

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    read = string (Optional)
    update = string (Optional)
  }
}
