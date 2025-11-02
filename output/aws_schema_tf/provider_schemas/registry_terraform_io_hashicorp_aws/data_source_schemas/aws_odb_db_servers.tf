data "aws_odb_db_servers" "name" {
  cloud_exadata_infrastructure_id = string (Required)
  db_servers = ['list', ['object', {'autonomous_virtual_machine_ids': ['list', 'string'], 'autonomous_vm_cluster_ids': ['list', 'string'], 'compute_model': 'string', 'cpu_core_count': 'number', 'created_at': 'string', 'db_node_storage_size_in_gbs': 'number', 'db_server_patching_details': ['list', ['object', {'estimated_patch_duration': 'number', 'patching_status': 'string', 'time_patching_ended': 'string', 'time_patching_started': 'string'}]], 'display_name': 'string', 'exadata_infrastructure_id': 'string', 'id': 'string', 'max_cpu_count': 'number', 'max_db_node_storage_in_gbs': 'number', 'max_memory_in_gbs': 'number', 'memory_size_in_gbs': 'number', 'oci_resource_anchor_name': 'string', 'ocid': 'string', 'shape': 'string', 'status': 'string', 'status_reason': 'string', 'vm_cluster_ids': ['list', 'string']}]] (Computed)
  region = string (Optional, Computed)
}
