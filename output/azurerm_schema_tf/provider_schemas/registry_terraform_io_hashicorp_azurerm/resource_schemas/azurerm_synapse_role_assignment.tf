resource "azurerm_synapse_role_assignment" "name" {
  principal_id = string (Required)
  role_name = string (Required)
  id = string (Optional, Computed)
  principal_type = string (Optional)
  synapse_spark_pool_id = string (Optional)
  synapse_workspace_id = string (Optional)

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    read = string (Optional)
  }
}
