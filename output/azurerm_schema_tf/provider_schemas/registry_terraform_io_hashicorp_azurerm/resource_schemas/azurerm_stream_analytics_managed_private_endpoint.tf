resource "azurerm_stream_analytics_managed_private_endpoint" "name" {
  name = string (Required)
  resource_group_name = string (Required)
  stream_analytics_cluster_name = string (Required)
  subresource_name = string (Required)
  target_resource_id = string (Required)
  id = string (Optional, Computed)

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    read = string (Optional)
  }
}
