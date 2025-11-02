resource "azurerm_graph_account" "name" {
  application_id = string (Required)
  name = string (Required)
  resource_group_name = string (Required)
  billing_plan_id = string (Computed)
  id = string (Optional, Computed)
  tags = ['map', 'string'] (Optional)

  timeouts block "single"  (Optional){
    create = string (Optional)
    delete = string (Optional)
    read = string (Optional)
    update = string (Optional)
  }
}
