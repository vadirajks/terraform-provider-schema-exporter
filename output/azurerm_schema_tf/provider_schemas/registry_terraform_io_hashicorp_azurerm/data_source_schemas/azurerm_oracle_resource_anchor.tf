data "azurerm_oracle_resource_anchor" "name" {
  name = string (Required)
  resource_group_name = string (Required)
  id = string (Optional, Computed)
  linked_compartment_id = string (Computed)
  location = string (Computed)
  tags = ['map', 'string'] (Computed)

  timeouts block "single" (Optional) {
    read = string (Optional)
  }
}
