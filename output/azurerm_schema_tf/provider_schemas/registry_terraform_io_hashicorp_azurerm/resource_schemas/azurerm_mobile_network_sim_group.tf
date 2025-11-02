resource "azurerm_mobile_network_sim_group" "name" {
  location = string (Required)
  mobile_network_id = string (Required)
  name = string (Required)
  encryption_key_url = string (Optional)
  id = string (Optional, Computed)
  tags = ['map', 'string'] (Optional)

  identity block "list" (Optional) {
    identity_ids = ['set', 'string'] (Required)
    type = string (Required)
  }

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    read = string (Optional)
    update = string (Optional)
  }
}
