resource "azurerm_custom_provider" "name" {
  location = string (Required)
  name = string (Required)
  resource_group_name = string (Required)
  id = string (Optional, Computed)
  tags = ['map', 'string'] (Optional)

  action block "set" (Optional) {
    endpoint = string (Required)
    name = string (Required)
  }

  resource_type block "set" (Optional) {
    endpoint = string (Required)
    name = string (Required)
    routing_type = string (Optional)
  }

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    read = string (Optional)
    update = string (Optional)
  }

  validation block "set" (Optional) {
    specification = string (Required)
  }
}
