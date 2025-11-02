resource "azurerm_web_app_hybrid_connection" "name" {
  hostname = string (Required)
  port = number (Required)
  relay_id = string (Required)
  web_app_id = string (Required)
  id = string (Optional, Computed)
  namespace_name = string (Computed)
  relay_name = string (Computed)
  send_key_name = string (Optional)
  send_key_value = string (Computed)
  service_bus_namespace = string (Computed)
  service_bus_suffix = string (Computed)

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    read = string (Optional)
    update = string (Optional)
  }
}
