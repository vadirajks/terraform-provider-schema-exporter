resource "azurerm_network_manager_verifier_workspace" "name" {
  location = string (Required)
  name = string (Required)
  network_manager_id = string (Required)
  description = string (Optional)
  id = string (Optional, Computed)
  tags = ['map', 'string'] (Optional)

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    read = string (Optional)
    update = string (Optional)
  }
}
