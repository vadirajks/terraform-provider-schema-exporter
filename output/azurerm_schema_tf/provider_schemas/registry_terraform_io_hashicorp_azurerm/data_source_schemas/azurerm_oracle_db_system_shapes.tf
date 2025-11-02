data "azurerm_oracle_db_system_shapes" "name" {
  location = string (Required)
  db_system_shapes = ['list', ['object', {'are_server_types_supported': 'bool', 'available_core_count': 'number', 'available_core_count_per_node': 'number', 'available_data_storage_in_tbs': 'number', 'available_data_storage_per_server_in_tbs': 'number', 'available_db_node_per_node_in_gbs': 'number', 'available_db_node_storage_in_gbs': 'number', 'available_memory_in_gbs': 'number', 'available_memory_per_node_in_gbs': 'number', 'compute_model': 'string', 'core_count_increment': 'number', 'display_name': 'string', 'maximum_node_count': 'number', 'maximum_storage_count': 'number', 'minimum_core_count': 'number', 'minimum_core_count_per_node': 'number', 'minimum_data_storage_in_tbs': 'number', 'minimum_db_node_storage_per_node_in_gbs': 'number', 'minimum_memory_per_node_in_gbs': 'number', 'minimum_node_count': 'number', 'minimum_storage_count': 'number', 'runtime_minimum_core_count': 'number', 'shape_family': 'string'}]] (Computed)
  id = string (Optional, Computed)
  zone = string (Optional)

  timeouts block "single" (Optional) {
    read = string (Optional)
  }
}
