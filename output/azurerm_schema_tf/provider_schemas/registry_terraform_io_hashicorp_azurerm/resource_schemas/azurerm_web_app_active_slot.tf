resource "azurerm_web_app_active_slot" "name" {
  slot_id = string (Required)
  id = string (Optional, Computed)
  last_successful_swap = string (Computed)
  overwrite_network_config = bool (Optional)

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    read = string (Optional)
    update = string (Optional)
  }
}
