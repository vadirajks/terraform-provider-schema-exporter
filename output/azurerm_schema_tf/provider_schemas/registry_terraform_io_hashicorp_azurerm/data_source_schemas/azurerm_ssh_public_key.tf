data "azurerm_ssh_public_key" "name" {
  name = string (Required)
  resource_group_name = string (Required)
  id = string (Optional, Computed)
  public_key = string (Computed)
  tags = ['map', 'string'] (Optional)

  timeouts block "single" (Optional) {
    read = string (Optional)
  }
}
