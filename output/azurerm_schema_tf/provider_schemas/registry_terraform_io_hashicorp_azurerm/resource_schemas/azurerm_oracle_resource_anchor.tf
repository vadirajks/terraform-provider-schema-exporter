resource "azurerm_oracle_resource_anchor" "name" {
  name = string (Required)
  resource_group_name = string (Required)
  id = string (Optional, Computed)
  linked_compartment_id = string (Computed)
  location = string (Computed)
  tags = ['map', 'string'] (Optional)

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    read = string (Optional)
    update = string (Optional)
  }
}
