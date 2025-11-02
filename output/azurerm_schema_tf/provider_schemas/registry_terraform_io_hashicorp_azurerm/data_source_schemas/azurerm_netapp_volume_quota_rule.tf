data "azurerm_netapp_volume_quota_rule" "name" {
  name = string (Required)
  volume_id = string (Required)
  id = string (Optional, Computed)
  location = string (Computed)
  quota_size_in_kib = number (Computed)
  quota_target = string (Computed)
  quota_type = string (Computed)

  timeouts block "single" (Optional) {
    read = string (Optional)
  }
}
