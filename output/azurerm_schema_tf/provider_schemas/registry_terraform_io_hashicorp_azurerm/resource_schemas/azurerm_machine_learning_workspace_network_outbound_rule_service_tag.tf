resource "azurerm_machine_learning_workspace_network_outbound_rule_service_tag" "name" {
  name = string (Required)
  port_ranges = string (Required)
  protocol = string (Required)
  service_tag = string (Required)
  workspace_id = string (Required)
  id = string (Optional, Computed)

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    read = string (Optional)
    update = string (Optional)
  }
}
