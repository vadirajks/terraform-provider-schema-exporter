resource "azurerm_resource_provider_registration" "name" {
  name = string (Required)
  id = string (Optional, Computed)

  feature block "set" (Optional) {
    name = string (Required)
    registered = bool (Required)
  }

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    read = string (Optional)
    update = string (Optional)
  }
}
