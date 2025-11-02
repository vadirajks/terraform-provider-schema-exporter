resource "azurerm_kusto_cluster" "name" {
  location = string (Required)
  name = string (Required)
  resource_group_name = string (Required)
  allowed_fqdns = ['list', 'string'] (Optional)
  allowed_ip_ranges = ['list', 'string'] (Optional)
  auto_stop_enabled = bool (Optional)
  data_ingestion_uri = string (Computed)
  disk_encryption_enabled = bool (Optional)
  double_encryption_enabled = bool (Optional)
  id = string (Optional, Computed)
  outbound_network_access_restricted = bool (Optional)
  public_ip_type = string (Optional)
  public_network_access_enabled = bool (Optional)
  purge_enabled = bool (Optional)
  streaming_ingestion_enabled = bool (Optional)
  tags = ['map', 'string'] (Optional)
  trusted_external_tenants = ['list', 'string'] (Optional, Computed)
  uri = string (Computed)
  zones = ['set', 'string'] (Optional)

  identity block "list" (Optional) {
    type = string (Required)
    identity_ids = ['set', 'string'] (Optional)
    principal_id = string (Computed)
    tenant_id = string (Computed)
  }

  language_extension block "list" (Optional) {
    image = string (Required)
    name = string (Required)
  }

  language_extensions block "list" (Optional) {
    image = string (Required)
    name = string (Required)
  }

  optimized_auto_scale block "list" (Optional) {
    maximum_instances = number (Required)
    minimum_instances = number (Required)
  }

  sku block "list" (Required) {
    name = string (Required)
    capacity = number (Optional, Computed)
  }

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    read = string (Optional)
    update = string (Optional)
  }

  virtual_network_configuration block "list" (Optional) {
    data_management_public_ip_id = string (Required)
    engine_public_ip_id = string (Required)
    subnet_id = string (Required)
  }
}
