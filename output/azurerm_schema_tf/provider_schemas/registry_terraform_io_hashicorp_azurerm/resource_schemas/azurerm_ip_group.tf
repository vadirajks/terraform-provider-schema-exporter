resource "azurerm_ip_group" "name" {
  location = string (Required)
  name = string (Required)
  resource_group_name = string (Required)
  cidrs = ['set', 'string'] (Optional)
  firewall_ids = ['list', 'string'] (Computed)
  firewall_policy_ids = ['list', 'string'] (Computed)
  id = string (Optional, Computed)
  tags = ['map', 'string'] (Optional)

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    read = string (Optional)
    update = string (Optional)
  }
}
