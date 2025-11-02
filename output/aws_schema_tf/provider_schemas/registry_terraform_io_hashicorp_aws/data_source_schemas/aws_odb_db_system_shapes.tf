data "aws_odb_db_system_shapes" "name" {
  availability_zone_id = string (Optional)
  db_system_shapes = ['list', ['object', {'available_core_count': 'number', 'available_core_count_per_node': 'number', 'available_data_storage_in_tbs': 'number', 'available_data_storage_per_server_in_tbs': 'number', 'available_db_node_per_node_in_gbs': 'number', 'available_db_node_storage_in_gbs': 'number', 'available_memory_in_gbs': 'number', 'available_memory_per_node_in_gbs': 'number', 'core_count_increment': 'number', 'max_storage_count': 'number', 'maximum_node_count': 'number', 'min_core_count_per_node': 'number', 'min_data_storage_in_tbs': 'number', 'min_db_node_storage_per_node_in_gbs': 'number', 'min_memory_per_node_in_gbs': 'number', 'min_storage_count': 'number', 'minimum_core_count': 'number', 'minimum_node_count': 'number', 'name': 'string', 'runtime_minimum_core_count': 'number', 'shape_family': 'string', 'shape_type': 'string'}]] (Computed)
  region = string (Optional, Computed)
}
