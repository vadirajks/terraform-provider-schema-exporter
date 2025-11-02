resource "azurerm_firewall_policy" "name" {
  location = string (Required)
  name = string (Required)
  resource_group_name = string (Required)
  auto_learn_private_ranges_enabled = bool (Optional)
  base_policy_id = string (Optional)
  child_policies = ['list', 'string'] (Computed)
  firewalls = ['list', 'string'] (Computed)
  id = string (Optional, Computed)
  private_ip_ranges = ['list', 'string'] (Optional)
  rule_collection_groups = ['list', 'string'] (Computed)
  sku = string (Optional)
  sql_redirect_allowed = bool (Optional)
  tags = ['map', 'string'] (Optional)
  threat_intelligence_mode = string (Optional)

  dns block "list" (Optional) {
    proxy_enabled = bool (Optional)
    servers = ['list', 'string'] (Optional)
  }

  explicit_proxy block "list" (Optional) {
    enable_pac_file = bool (Optional)
    enabled = bool (Optional)
    http_port = number (Optional)
    https_port = number (Optional)
    pac_file = string (Optional)
    pac_file_port = number (Optional)
  }

  identity block "list" (Optional) {
    type = string (Required)
    identity_ids = ['set', 'string'] (Optional)
    principal_id = string (Computed)
    tenant_id = string (Computed)
  }

  insights block "list" (Optional) {
    default_log_analytics_workspace_id = string (Required)
    enabled = bool (Required)
    retention_in_days = number (Optional)

    log_analytics_workspace block "list" (Optional) {
      firewall_location = string (Required)
      id = string (Required)
    }
  }

  intrusion_detection block "list" (Optional) {
    mode = string (Optional)
    private_ranges = ['list', 'string'] (Optional)

    signature_overrides block "list" (Optional) {
      id = string (Optional)
      state = string (Optional)
    }

    traffic_bypass block "list" (Optional) {
      name = string (Required)
      protocol = string (Required)
      description = string (Optional)
      destination_addresses = ['set', 'string'] (Optional)
      destination_ip_groups = ['set', 'string'] (Optional)
      destination_ports = ['set', 'string'] (Optional)
      source_addresses = ['set', 'string'] (Optional)
      source_ip_groups = ['set', 'string'] (Optional)
    }
  }

  threat_intelligence_allowlist block "list" (Optional) {
    fqdns = ['set', 'string'] (Optional)
    ip_addresses = ['set', 'string'] (Optional)
  }

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    read = string (Optional)
    update = string (Optional)
  }

  tls_certificate block "list" (Optional) {
    key_vault_secret_id = string (Required)
    name = string (Required)
  }
}
