resource "azurerm_disk_pool_iscsi_target_lun" "name" {
  disk_pool_managed_disk_attachment_id = string (Required)
  iscsi_target_id = string (Required)
  name = string (Required)
  id = string (Optional, Computed)
  lun = number (Computed)

  timeouts block "single"  (Optional){
    create = string (Optional)
    delete = string (Optional)
    read = string (Optional)
  }
}
