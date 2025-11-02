data "azurerm_graph_services_account" "name" {
  name = string (Required)
  resource_group_name = string (Required)
  application_id = string (Computed)
  billing_plan_id = string (Computed)
  id = string (Optional, Computed)
  tags = ['map', 'string'] (Computed)

  timeouts block "single" (Optional) {
    read = string (Optional)
  }
}
