resource "azurerm_signalr_shared_private_link_resource" "name" {
  name = string (Required)
  signalr_service_id = string (Required)
  sub_resource_name = string (Required)
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
