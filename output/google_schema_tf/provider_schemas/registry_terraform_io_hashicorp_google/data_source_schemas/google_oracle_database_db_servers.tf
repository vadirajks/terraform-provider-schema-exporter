data "google_oracle_database_db_servers" "name" {
  cloud_exadata_infrastructure = string (Required)
  location = string (Required)
  db_servers = ['list', ['object', {'display_name': 'string', 'properties': ['list', ['object', {'db_node_ids': ['list', 'string'], 'db_node_storage_size_gb': 'number', 'max_db_node_storage_size_gb': 'number', 'max_memory_size_gb': 'number', 'max_ocpu_count': 'number', 'memory_size_gb': 'number', 'ocid': 'string', 'ocpu_count': 'number', 'state': 'string', 'vm_count': 'number'}]]}]] (Computed)
  id = string (Optional, Computed)
  project = string (Optional)
}
