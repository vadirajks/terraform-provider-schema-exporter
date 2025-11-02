data "azurerm_web_pubsub_private_link_resource" "name" {
  web_pubsub_id = string (Required)
  id = string (Optional, Computed)
  shared_private_link_resource_types = ['list', ['object', {'description': 'string', 'subresource_name': 'string'}]] (Computed)

  timeouts block "single" (Optional) {
    read = string (Optional)
  }
}
