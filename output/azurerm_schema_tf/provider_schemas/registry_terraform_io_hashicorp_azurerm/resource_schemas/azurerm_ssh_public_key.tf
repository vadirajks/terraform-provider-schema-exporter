resource "azurerm_ssh_public_key" "name" {
  location = string (Required)
  name = string (Required)
  public_key = string (Required)
  resource_group_name = string (Required)
  id = string (Optional, Computed)
  tags = ['map', 'string'] (Optional)

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    read = string (Optional)
    update = string (Optional)
  }
}
