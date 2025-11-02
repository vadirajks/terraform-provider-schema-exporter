resource "azurerm_spring_cloud_dev_tool_portal" "name" {
  name = string (Required)
  spring_cloud_service_id = string (Required)
  application_accelerator_enabled = bool (Optional, Computed)
  application_live_view_enabled = bool (Optional, Computed)
  id = string (Optional, Computed)
  public_network_access_enabled = bool (Optional)

  sso block "list" (Optional) {
    client_id = string (Optional)
    client_secret = string (Optional)
    metadata_url = string (Optional)
    scope = ['set', 'string'] (Optional)
  }

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    read = string (Optional)
    update = string (Optional)
  }
}
