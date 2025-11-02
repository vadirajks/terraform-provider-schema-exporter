resource "azurerm_vmware_netapp_volume_attachment" "name" {
  name = string (Required)
  netapp_volume_id = string (Required)
  vmware_cluster_id = string (Required)
  id = string (Optional, Computed)

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    read = string (Optional)
  }
}
