resource "azurerm_dashboard_grafana_managed_private_endpoint" "name" {
  grafana_id = string (Required)
  location = string (Required)
  name = string (Required)
  private_link_resource_id = string (Required)
  group_ids = ['list', 'string'] (Optional)
  id = string (Optional, Computed)
  private_link_resource_region = string (Optional)
  private_link_service_url = string (Optional)
  request_message = string (Optional)
  tags = ['map', 'string'] (Optional)

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    read = string (Optional)
    update = string (Optional)
  }
}
