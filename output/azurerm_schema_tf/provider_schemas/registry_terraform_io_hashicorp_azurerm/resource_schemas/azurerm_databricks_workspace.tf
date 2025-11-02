resource "azurerm_databricks_workspace" "name" {
  location = string (Required)
  name = string (Required)
  resource_group_name = string (Required)
  sku = string (Required)
  access_connector_id = string (Optional)
  customer_managed_key_enabled = bool (Optional)
  default_storage_firewall_enabled = bool (Optional)
  disk_encryption_set_id = string (Computed)
  id = string (Optional, Computed)
  infrastructure_encryption_enabled = bool (Optional)
  load_balancer_backend_address_pool_id = string (Optional)
  managed_disk_cmk_key_vault_id = string (Optional)
  managed_disk_cmk_key_vault_key_id = string (Optional)
  managed_disk_cmk_rotation_to_latest_version_enabled = bool (Optional)
  managed_disk_identity = ['list', ['object', {'principal_id': 'string', 'tenant_id': 'string', 'type': 'string'}]] (Computed)
  managed_resource_group_id = string (Computed)
  managed_resource_group_name = string (Optional, Computed)
  managed_services_cmk_key_vault_id = string (Optional)
  managed_services_cmk_key_vault_key_id = string (Optional)
  network_security_group_rules_required = string (Optional)
  public_network_access_enabled = bool (Optional)
  storage_account_identity = ['list', ['object', {'principal_id': 'string', 'tenant_id': 'string', 'type': 'string'}]] (Computed)
  tags = ['map', 'string'] (Optional)
  workspace_id = string (Computed)
  workspace_url = string (Computed)

  custom_parameters block "list" (Optional) {
    machine_learning_workspace_id = string (Optional)
    nat_gateway_name = string (Optional, Computed)
    no_public_ip = bool (Optional)
    private_subnet_name = string (Optional)
    private_subnet_network_security_group_association_id = string (Optional)
    public_ip_name = string (Optional, Computed)
    public_subnet_name = string (Optional)
    public_subnet_network_security_group_association_id = string (Optional)
    storage_account_name = string (Optional, Computed)
    storage_account_sku_name = string (Optional, Computed)
    virtual_network_id = string (Optional)
    vnet_address_prefix = string (Optional, Computed)
  }

  enhanced_security_compliance block "list" (Optional) {
    automatic_cluster_update_enabled = bool (Optional)
    compliance_security_profile_enabled = bool (Optional)
    compliance_security_profile_standards = ['set', 'string'] (Optional)
    enhanced_security_monitoring_enabled = bool (Optional)
  }

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    read = string (Optional)
    update = string (Optional)
  }
}
