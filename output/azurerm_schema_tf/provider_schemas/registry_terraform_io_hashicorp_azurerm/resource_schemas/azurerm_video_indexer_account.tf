resource "azurerm_video_indexer_account" "name" {
  location = string (Required)
  name = string (Required)
  resource_group_name = string (Required)
  id = string (Optional, Computed)
  public_network_access = string (Optional)
  tags = ['map', 'string'] (Optional)

  identity block "list" (Required) {
    type = string (Required)
    identity_ids = ['set', 'string'] (Optional)
    principal_id = string (Computed)
    tenant_id = string (Computed)
  }

  storage block "list" (Required) {
    storage_account_id = string (Required)
    user_assigned_identity_id = string (Optional)
  }

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    read = string (Optional)
    update = string (Optional)
  }
}
