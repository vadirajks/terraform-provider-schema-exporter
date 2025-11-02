data "azurerm_eventhub_cluster" "name" {
  name = string (Required)
  resource_group_name = string (Required)
  id = string (Optional, Computed)
  location = string (Computed)
  sku_name = string (Computed)

  timeouts block "single" (Optional) {
    read = string (Optional)
  }
}
