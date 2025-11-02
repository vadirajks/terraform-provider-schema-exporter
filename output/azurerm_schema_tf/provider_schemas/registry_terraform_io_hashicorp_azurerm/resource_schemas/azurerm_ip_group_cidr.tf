resource "azurerm_ip_group_cidr" "name" {
  cidr = string (Required)
  ip_group_id = string (Required)
  id = string (Optional, Computed)

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    read = string (Optional)
  }
}
