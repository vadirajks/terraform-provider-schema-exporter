data "azurerm_kubernetes_node_pool_snapshot" "name" {
  name = string (Required)
  resource_group_name = string (Required)
  id = string (Optional, Computed)
  source_node_pool_id = string (Computed)
  tags = ['map', 'string'] (Computed)

  timeouts block "single" (Optional) {
    read = string (Optional)
  }
}
