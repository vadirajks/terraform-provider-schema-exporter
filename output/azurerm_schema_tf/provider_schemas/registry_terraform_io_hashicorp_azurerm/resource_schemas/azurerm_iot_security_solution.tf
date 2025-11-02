resource "azurerm_iot_security_solution" "name" {
  display_name = string (Required)
  iothub_ids = ['set', 'string'] (Required)
  location = string (Required)
  name = string (Required)
  resource_group_name = string (Required)
  disabled_data_sources = ['set', 'string'] (Optional)
  enabled = bool (Optional)
  events_to_export = ['set', 'string'] (Optional)
  id = string (Optional, Computed)
  log_analytics_workspace_id = string (Optional)
  log_unmasked_ips_enabled = bool (Optional)
  query_for_resources = string (Optional, Computed)
  query_subscription_ids = ['set', 'string'] (Optional, Computed)
  tags = ['map', 'string'] (Optional)

  additional_workspace block "set" (Optional) {
    data_types = ['set', 'string'] (Required)
    workspace_id = string (Required)
  }

  recommendations_enabled block "list" (Optional) {
    acr_authentication = bool (Optional)
    agent_send_unutilized_msg = bool (Optional)
    baseline = bool (Optional)
    edge_hub_mem_optimize = bool (Optional)
    edge_logging_option = bool (Optional)
    inconsistent_module_settings = bool (Optional)
    install_agent = bool (Optional)
    ip_filter_deny_all = bool (Optional)
    ip_filter_permissive_rule = bool (Optional)
    open_ports = bool (Optional)
    permissive_firewall_policy = bool (Optional)
    permissive_input_firewall_rules = bool (Optional)
    permissive_output_firewall_rules = bool (Optional)
    privileged_docker_options = bool (Optional)
    shared_credentials = bool (Optional)
    vulnerable_tls_cipher_suite = bool (Optional)
  }

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    read = string (Optional)
    update = string (Optional)
  }
}
