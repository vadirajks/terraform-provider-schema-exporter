resource "azurerm_ai_foundry" "name" {
  key_vault_id = string (Required)
  location = string (Required)
  name = string (Required)
  resource_group_name = string (Required)
  storage_account_id = string (Required)
  application_insights_id = string (Optional)
  container_registry_id = string (Optional)
  description = string (Optional)
  discovery_url = string (Computed)
  friendly_name = string (Optional)
  high_business_impact_enabled = bool (Optional, Computed)
  id = string (Optional, Computed)
  primary_user_assigned_identity = string (Optional)
  public_network_access = string (Optional)
  tags = ['map', 'string'] (Optional)
  workspace_id = string (Computed)

  encryption block "list" (Optional) {
    key_id = string (Required)
    key_vault_id = string (Required)
    user_assigned_identity_id = string (Optional)
  }

  identity block "list" (Required) {
    type = string (Required)
    identity_ids = ['set', 'string'] (Optional)
    principal_id = string (Computed)
    tenant_id = string (Computed)
  }

  managed_network block "list" (Optional) {
    isolation_mode = string (Optional, Computed)
  }

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    read = string (Optional)
    update = string (Optional)
  }
}
