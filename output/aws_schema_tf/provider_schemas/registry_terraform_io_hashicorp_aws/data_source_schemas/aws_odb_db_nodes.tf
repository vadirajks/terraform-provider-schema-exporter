data "aws_odb_db_nodes" "name" {
  cloud_vm_cluster_id = string (Required)
  db_nodes = ['list', ['object', {'additional_details': 'string', 'arn': 'string', 'backup_ip_id': 'string', 'backup_vnic2_id': 'string', 'backup_vnic_id': 'string', 'cpu_core_count': 'number', 'created_at': 'string', 'db_node_storage_size': 'number', 'db_server_id': 'string', 'db_system_id': 'string', 'fault_domain': 'string', 'host_ip_id': 'string', 'hostname': 'string', 'id': 'string', 'maintenance_type': 'string', 'memory_size': 'number', 'oci_resource_anchor_name': 'string', 'ocid': 'string', 'software_storage_size': 'number', 'status': 'string', 'status_reason': 'string', 'time_maintenance_window_end': 'string', 'time_maintenance_window_start': 'string', 'total_cpu_core_count': 'number', 'vnic2_id': 'string', 'vnic_id': 'string'}]] (Computed)
  region = string (Optional, Computed)
}
