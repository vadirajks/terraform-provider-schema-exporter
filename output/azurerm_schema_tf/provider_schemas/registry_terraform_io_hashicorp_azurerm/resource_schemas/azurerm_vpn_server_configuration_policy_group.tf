resource "azurerm_vpn_server_configuration_policy_group" "name" {
  name = string (Required)
  vpn_server_configuration_id = string (Required)
  id = string (Optional, Computed)
  is_default = bool (Optional)
  priority = number (Optional)

  policy block "set" (Required) {
    name = string (Required)
    type = string (Required)
    value = string (Required)
  }

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    read = string (Optional)
    update = string (Optional)
  }
}
