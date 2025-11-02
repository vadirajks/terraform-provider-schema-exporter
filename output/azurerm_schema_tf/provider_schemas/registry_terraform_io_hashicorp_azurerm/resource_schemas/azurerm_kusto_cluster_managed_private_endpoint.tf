resource "azurerm_kusto_cluster_managed_private_endpoint" "name" {
  cluster_name = string (Required)
  group_id = string (Required)
  name = string (Required)
  private_link_resource_id = string (Required)
  resource_group_name = string (Required)
  id = string (Optional, Computed)
  private_link_resource_region = string (Optional)
  request_message = string (Optional)

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    read = string (Optional)
    update = string (Optional)
  }
}
