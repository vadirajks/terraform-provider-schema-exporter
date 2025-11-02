data "azurerm_traffic_manager_geographical_location" "name" {
  name = string (Required)
  id = string (Optional, Computed)

  timeouts block "single" (Optional) {
    read = string (Optional)
  }
}
