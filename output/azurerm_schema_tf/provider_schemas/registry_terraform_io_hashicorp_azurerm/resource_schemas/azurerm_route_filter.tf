resource "azurerm_route_filter" "name" {
  location = string (Required)
  name = string (Required)
  resource_group_name = string (Required)
  id = string (Optional, Computed)
  rule = ['list', ['object', {'access': 'string', 'communities': ['list', 'string'], 'name': 'string', 'rule_type': 'string'}]] (Optional, Computed)
  tags = ['map', 'string'] (Optional)

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    read = string (Optional)
    update = string (Optional)
  }
}
