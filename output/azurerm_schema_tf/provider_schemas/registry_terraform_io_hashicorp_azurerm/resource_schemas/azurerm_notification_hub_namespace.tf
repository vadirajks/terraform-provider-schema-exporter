resource "azurerm_notification_hub_namespace" "name" {
  location = string (Required)
  name = string (Required)
  namespace_type = string (Required)
  resource_group_name = string (Required)
  sku_name = string (Required)
  enabled = bool (Optional)
  id = string (Optional, Computed)
  replication_region = string (Optional)
  servicebus_endpoint = string (Computed)
  tags = ['map', 'string'] (Optional)
  zone_redundancy_enabled = bool (Optional)

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    read = string (Optional)
    update = string (Optional)
  }
}
