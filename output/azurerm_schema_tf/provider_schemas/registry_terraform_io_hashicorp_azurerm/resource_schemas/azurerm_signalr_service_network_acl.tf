resource "azurerm_signalr_service_network_acl" "name" {
  default_action = string (Required)
  signalr_service_id = string (Required)
  id = string (Optional, Computed)

  private_endpoint block "set" (Optional) {
    id = string (Required)
    allowed_request_types = ['set', 'string'] (Optional)
    denied_request_types = ['set', 'string'] (Optional)
  }

  public_network block "list" (Required) {
    allowed_request_types = ['set', 'string'] (Optional)
    denied_request_types = ['set', 'string'] (Optional)
  }

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    read = string (Optional)
    update = string (Optional)
  }
}
