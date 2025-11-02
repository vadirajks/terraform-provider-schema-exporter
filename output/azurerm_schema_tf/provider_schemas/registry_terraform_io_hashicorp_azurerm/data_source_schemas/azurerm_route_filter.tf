data "azurerm_route_filter" "name" {
  name = string (Required)
  resource_group_name = string (Required)
  id = string (Optional, Computed)
  location = string (Computed)
  rule = ['list', ['object', {'access': 'string', 'communities': ['list', 'string'], 'name': 'string', 'rule_type': 'string'}]] (Computed)
  tags = ['map', 'string'] (Computed)

  timeouts block "single" (Optional) {
    read = string (Optional)
  }
}
