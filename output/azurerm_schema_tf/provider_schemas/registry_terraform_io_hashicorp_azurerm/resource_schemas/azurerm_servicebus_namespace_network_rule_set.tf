resource "azurerm_servicebus_namespace_network_rule_set" "name" {
  namespace_id = string (Required)
  default_action = string (Optional)
  id = string (Optional, Computed)
  ip_rules = ['set', 'string'] (Optional)
  public_network_access_enabled = bool (Optional)
  trusted_services_allowed = bool (Optional)

  network_rules block "set"  (Optional){
    subnet_id = string (Required)
    ignore_missing_vnet_service_endpoint = bool (Optional)
  }

  timeouts block "single"  (Optional){
    create = string (Optional)
    delete = string (Optional)
    read = string (Optional)
    update = string (Optional)
  }
}
