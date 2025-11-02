resource "azurerm_search_shared_private_link_service" "name" {
  name = string (Required)
  search_service_id = string (Required)
  subresource_name = string (Required)
  target_resource_id = string (Required)
  id = string (Optional, Computed)
  request_message = string (Optional)
  status = string (Computed)

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    read = string (Optional)
    update = string (Optional)
  }
}
