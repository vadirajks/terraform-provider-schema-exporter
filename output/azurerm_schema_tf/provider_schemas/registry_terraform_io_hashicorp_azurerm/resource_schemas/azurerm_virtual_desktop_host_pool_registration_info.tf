resource "azurerm_virtual_desktop_host_pool_registration_info" "name" {
  expiration_date = string (Required)
  hostpool_id = string (Required)
  id = string (Optional, Computed)
  token = string (Computed)

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    read = string (Optional)
    update = string (Optional)
  }
}
