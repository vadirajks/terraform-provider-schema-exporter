resource "azurerm_disk_pool_iscsi_target" "name" {
  acl_mode = string (Required)
  disks_pool_id = string (Required)
  name = string (Required)
  endpoints = ['list', 'string'] (Computed)
  id = string (Optional, Computed)
  port = number (Computed)
  target_iqn = string (Optional)

  timeouts block "single"  (Optional){
    create = string (Optional)
    delete = string (Optional)
    read = string (Optional)
  }
}
