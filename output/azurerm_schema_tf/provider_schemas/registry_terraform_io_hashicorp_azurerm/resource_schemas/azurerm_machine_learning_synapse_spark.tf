resource "azurerm_machine_learning_synapse_spark" "name" {
  location = string (Required)
  machine_learning_workspace_id = string (Required)
  name = string (Required)
  synapse_spark_pool_id = string (Required)
  description = string (Optional)
  id = string (Optional, Computed)
  local_auth_enabled = bool (Optional)
  tags = ['map', 'string'] (Optional)

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
  }
}
