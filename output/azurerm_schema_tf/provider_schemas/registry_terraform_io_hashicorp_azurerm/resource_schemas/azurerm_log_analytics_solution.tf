resource "azurerm_log_analytics_solution" "name" {
  location = string (Required)
  resource_group_name = string (Required)
  solution_name = string (Required)
  workspace_name = string (Required)
  workspace_resource_id = string (Required)
  id = string (Optional, Computed)
  tags = ['map', 'string'] (Optional)

  plan block "list" (Required) {
    product = string (Required)
    publisher = string (Required)
    name = string (Computed)
    promotion_code = string (Optional)
  }

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    read = string (Optional)
    update = string (Optional)
  }
}
