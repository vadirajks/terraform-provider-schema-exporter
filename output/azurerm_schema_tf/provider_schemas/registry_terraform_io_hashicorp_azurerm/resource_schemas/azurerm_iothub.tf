resource "azurerm_iothub" "name" {
  location = string (Required)
  name = string (Required)
  resource_group_name = string (Required)
  endpoint = ['list', ['object', {'authentication_type': 'string', 'batch_frequency_in_seconds': 'number', 'connection_string': 'string', 'container_name': 'string', 'encoding': 'string', 'endpoint_uri': 'string', 'entity_path': 'string', 'file_name_format': 'string', 'identity_id': 'string', 'max_chunk_size_in_bytes': 'number', 'name': 'string', 'resource_group_name': 'string', 'subscription_id': 'string', 'type': 'string'}]] (Optional, Computed)
  enrichment = ['list', ['object', {'endpoint_names': ['list', 'string'], 'key': 'string', 'value': 'string'}]] (Optional, Computed)
  event_hub_events_endpoint = string (Computed)
  event_hub_events_namespace = string (Computed)
  event_hub_events_path = string (Computed)
  event_hub_operations_endpoint = string (Computed)
  event_hub_operations_path = string (Computed)
  event_hub_partition_count = number (Optional)
  event_hub_retention_in_days = number (Optional)
  hostname = string (Computed)
  id = string (Optional, Computed)
  local_authentication_enabled = bool (Optional)
  min_tls_version = string (Optional)
  public_network_access_enabled = bool (Optional)
  route = ['list', ['object', {'condition': 'string', 'enabled': 'bool', 'endpoint_names': ['list', 'string'], 'name': 'string', 'source': 'string'}]] (Optional, Computed)
  shared_access_policy = ['list', ['object', {'key_name': 'string', 'permissions': 'string', 'primary_key': 'string', 'secondary_key': 'string'}]] (Computed)
  tags = ['map', 'string'] (Optional)
  type = string (Computed)

  cloud_to_device block "list" (Optional) {
    default_ttl = string (Optional)
    max_delivery_count = number (Optional)

    feedback block "list" (Optional) {
      lock_duration = string (Optional)
      max_delivery_count = number (Optional)
      time_to_live = string (Optional)
    }
  }

  fallback_route block "list" (Optional) {
    condition = string (Optional)
    enabled = bool (Optional)
    endpoint_names = ['list', 'string'] (Optional, Computed)
    source = string (Optional)
  }

  file_upload block "list" (Optional) {
    connection_string = string (Required)
    container_name = string (Required)
    authentication_type = string (Optional)
    default_ttl = string (Optional)
    identity_id = string (Optional)
    lock_duration = string (Optional)
    max_delivery_count = number (Optional)
    notifications = bool (Optional)
    sas_ttl = string (Optional)
  }

  identity block "list" (Optional) {
    type = string (Required)
    identity_ids = ['set', 'string'] (Optional)
    principal_id = string (Computed)
    tenant_id = string (Computed)
  }

  network_rule_set block "list" (Optional) {
    apply_to_builtin_eventhub_endpoint = bool (Optional)
    default_action = string (Optional)

    ip_rule block "list" (Optional) {
      ip_mask = string (Required)
      name = string (Required)
      action = string (Optional)
    }
  }

  sku block "list" (Required) {
    capacity = number (Required)
    name = string (Required)
  }

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    read = string (Optional)
    update = string (Optional)
  }
}
