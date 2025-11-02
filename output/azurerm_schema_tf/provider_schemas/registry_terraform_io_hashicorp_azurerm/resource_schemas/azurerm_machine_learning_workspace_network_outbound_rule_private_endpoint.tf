resource "azurerm_machine_learning_workspace_network_outbound_rule_private_endpoint" "name" {
  name = string (Required)
  service_resource_id = string (Required)
  sub_resource_target = string (Required)
  workspace_id = string (Required)
  id = string (Optional, Computed)
  spark_enabled = bool (Optional)

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    read = string (Optional)
  }
}
