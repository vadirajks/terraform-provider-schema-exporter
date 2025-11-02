resource "azurerm_automation_account" "name" {
  location = string (Required)
  name = string (Required)
  resource_group_name = string (Required)
  sku_name = string (Required)
  dsc_primary_access_key = string (Computed)
  dsc_secondary_access_key = string (Computed)
  dsc_server_endpoint = string (Computed)
  hybrid_service_url = string (Computed)
  id = string (Optional, Computed)
  local_authentication_enabled = bool (Optional)
  private_endpoint_connection = ['list', ['object', {'id': 'string', 'name': 'string'}]] (Computed)
  public_network_access_enabled = bool (Optional)
  tags = ['map', 'string'] (Optional)

  encryption block "list" (Optional) {
    key_vault_key_id = string (Required)
    key_source = string (Optional)
    user_assigned_identity_id = string (Optional)
  }

  identity block "list" (Optional) {
    type = string (Required)
    identity_ids = ['set', 'string'] (Optional)
    principal_id = string (Computed)
    tenant_id = string (Computed)
  }

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    read = string (Optional)
    update = string (Optional)
  }
}
