resource "azurerm_dashboard_grafana" "name" {
  grafana_major_version = string (Required)
  location = string (Required)
  name = string (Required)
  resource_group_name = string (Required)
  api_key_enabled = bool (Optional)
  auto_generated_domain_name_label_scope = string (Optional)
  deterministic_outbound_ip_enabled = bool (Optional)
  endpoint = string (Computed)
  grafana_version = string (Computed)
  id = string (Optional, Computed)
  outbound_ip = ['list', 'string'] (Computed)
  public_network_access_enabled = bool (Optional)
  sku = string (Optional)
  tags = ['map', 'string'] (Optional)
  zone_redundancy_enabled = bool (Optional)

  azure_monitor_workspace_integrations block "list" (Optional) {
    resource_id = string (Required)
  }

  identity block "list" (Optional) {
    type = string (Required)
    identity_ids = ['set', 'string'] (Optional)
    principal_id = string (Computed)
    tenant_id = string (Computed)
  }

  smtp block "list" (Optional) {
    from_address = string (Required)
    host = string (Required)
    password = string (Required)
    start_tls_policy = string (Required)
    user = string (Required)
    enabled = bool (Optional)
    from_name = string (Optional)
    verification_skip_enabled = bool (Optional)
  }

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    read = string (Optional)
    update = string (Optional)
  }
}
