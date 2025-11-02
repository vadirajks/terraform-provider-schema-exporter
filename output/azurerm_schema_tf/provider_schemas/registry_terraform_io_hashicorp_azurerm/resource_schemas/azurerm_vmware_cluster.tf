resource "azurerm_vmware_cluster" "name" {
  cluster_node_count = number (Required)
  name = string (Required)
  sku_name = string (Required)
  vmware_cloud_id = string (Required)
  cluster_number = number (Computed)
  hosts = ['list', 'string'] (Computed)
  id = string (Optional, Computed)

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    read = string (Optional)
    update = string (Optional)
  }
}
