resource "azurerm_spring_cloud_api_portal" "name" {
  name = string (Required)
  spring_cloud_service_id = string (Required)
  api_try_out_enabled = bool (Optional)
  gateway_ids = ['set', 'string'] (Optional)
  https_only_enabled = bool (Optional)
  id = string (Optional, Computed)
  instance_count = number (Optional)
  public_network_access_enabled = bool (Optional)
  url = string (Computed)

  sso block "list" (Optional) {
    client_id = string (Optional)
    client_secret = string (Optional)
    issuer_uri = string (Optional)
    scope = ['set', 'string'] (Optional)
  }

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    read = string (Optional)
    update = string (Optional)
  }
}
