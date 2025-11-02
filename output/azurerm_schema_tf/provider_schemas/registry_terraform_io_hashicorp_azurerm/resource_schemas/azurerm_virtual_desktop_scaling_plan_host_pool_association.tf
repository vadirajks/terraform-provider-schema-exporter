resource "azurerm_virtual_desktop_scaling_plan_host_pool_association" "name" {
  enabled = bool (Required)
  host_pool_id = string (Required)
  scaling_plan_id = string (Required)
  id = string (Optional, Computed)

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    read = string (Optional)
    update = string (Optional)
  }
}
