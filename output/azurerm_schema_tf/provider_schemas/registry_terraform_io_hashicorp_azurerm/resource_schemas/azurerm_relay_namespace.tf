resource "azurerm_relay_namespace" "name" {
  location = string (Required)
  name = string (Required)
  resource_group_name = string (Required)
  sku_name = string (Required)
  id = string (Optional, Computed)
  metric_id = string (Computed)
  primary_connection_string = string (Computed)
  primary_key = string (Computed)
  secondary_connection_string = string (Computed)
  secondary_key = string (Computed)
  tags = ['map', 'string'] (Optional)

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    read = string (Optional)
    update = string (Optional)
  }
}
