data "google_oracle_database_db_nodes" "name" {
  cloud_vm_cluster = string (Required)
  location = string (Required)
  db_nodes = ['list', ['object', {'name': 'string', 'properties': ['list', ['object', {'db_node_storage_size_gb': 'number', 'db_server_ocid': 'string', 'hostname': 'string', 'memory_size_gb': 'number', 'ocid': 'string', 'ocpu_count': 'number', 'state': 'string', 'total_cpu_core_count': 'number'}]]}]] (Computed)
  id = string (Optional, Computed)
  project = string (Optional)
}
