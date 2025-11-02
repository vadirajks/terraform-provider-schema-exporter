data "azurerm_oracle_db_servers" "name" {
  cloud_exadata_infrastructure_name = string (Required)
  resource_group_name = string (Required)
  db_servers = ['list', ['object', {'autonomous_virtual_machine_ds': ['list', 'string'], 'autonomous_vm_cluster_ids': ['list', 'string'], 'compartment_id': 'string', 'compute_model': 'string', 'cpu_core_count': 'number', 'db_node_ids': ['list', 'string'], 'db_node_storage_size_in_gbs': 'number', 'display_name': 'string', 'exadata_infrastructure_id': 'string', 'lifecycle_details': 'string', 'lifecycle_state': 'string', 'max_cpu_count': 'number', 'max_db_node_storage_in_gbs': 'number', 'max_memory_in_gbs': 'number', 'memory_size_in_gbs': 'number', 'ocid': 'string', 'shape': 'string', 'time_created': 'string', 'vm_cluster_ids': ['list', 'string']}]] (Computed)
  id = string (Optional, Computed)

  timeouts block "single" (Optional) {
    read = string (Optional)
  }
}
