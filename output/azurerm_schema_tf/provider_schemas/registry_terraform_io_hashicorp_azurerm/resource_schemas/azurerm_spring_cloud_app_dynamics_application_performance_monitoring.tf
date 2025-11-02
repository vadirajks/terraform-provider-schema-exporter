resource "azurerm_spring_cloud_app_dynamics_application_performance_monitoring" "name" {
  agent_account_access_key = string (Required)
  agent_account_name = string (Required)
  controller_host_name = string (Required)
  name = string (Required)
  spring_cloud_service_id = string (Required)
  agent_application_name = string (Optional)
  agent_node_name = string (Optional)
  agent_tier_name = string (Optional)
  agent_unique_host_id = string (Optional)
  controller_port = number (Optional)
  controller_ssl_enabled = bool (Optional)
  globally_enabled = bool (Optional)
  id = string (Optional, Computed)

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    read = string (Optional)
    update = string (Optional)
  }
}
