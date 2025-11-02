resource "azurerm_web_pubsub_network_acl" "name" {
  web_pubsub_id = string (Required)
  default_action = string (Optional)
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
