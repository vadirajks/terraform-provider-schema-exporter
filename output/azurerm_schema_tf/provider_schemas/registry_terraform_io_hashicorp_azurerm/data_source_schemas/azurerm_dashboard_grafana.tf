data "azurerm_dashboard_grafana" "name" {
  name = string (Required)
  resource_group_name = string (Required)
  api_key_enabled = bool (Computed)
  auto_generated_domain_name_label_scope = string (Computed)
  azure_monitor_workspace_integrations = ['list', ['object', {'resource_id': 'string'}]] (Computed)
  deterministic_outbound_ip_enabled = bool (Computed)
  endpoint = string (Computed)
  grafana_major_version = string (Computed)
  grafana_version = string (Computed)
  id = string (Optional, Computed)
  location = string (Computed)
  outbound_ips = ['list', 'string'] (Computed)
  public_network_access_enabled = bool (Computed)
  sku = string (Computed)
  tags = ['map', 'string'] (Computed)
  zone_redundancy_enabled = bool (Computed)

  identity block "list" (Optional) {
    type = string (Required)
    identity_ids = ['set', 'string'] (Optional)
    principal_id = string (Computed)
    tenant_id = string (Computed)
  }

  timeouts block "single" (Optional) {
    read = string (Optional)
  }
}
