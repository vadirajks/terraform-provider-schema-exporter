resource "azurerm_netapp_volume_quota_rule" "name" {
  location = string (Required)
  name = string (Required)
  quota_size_in_kib = number (Required)
  quota_type = string (Required)
  volume_id = string (Required)
  id = string (Optional, Computed)
  quota_target = string (Optional)

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    read = string (Optional)
    update = string (Optional)
  }
}
