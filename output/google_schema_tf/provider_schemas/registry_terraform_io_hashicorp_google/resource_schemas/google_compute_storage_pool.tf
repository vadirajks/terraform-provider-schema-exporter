resource "google_compute_storage_pool" "name" {
  name = string (Required)
  pool_provisioned_capacity_gb = string (Required)
  pool_provisioned_throughput = string (Required)
  storage_pool_type = string (Required)
  capacity_provisioning_type = string (Optional, Computed)
  creation_timestamp = string (Computed)
  deletion_protection = bool (Optional)
  description = string (Optional)
  effective_labels = ['map', 'string'] (Computed)
  id = string (Computed)
  kind = string (Computed)
  label_fingerprint = string (Computed)
  labels = ['map', 'string'] (Optional)
  performance_provisioning_type = string (Optional, Computed)
  pool_provisioned_iops = string (Optional)
  project = string (Optional, Computed)
  resource_status = ['list', ['object', {'disk_count': 'string', 'last_resize_timestamp': 'string', 'max_total_provisioned_disk_capacity_gb': 'string', 'pool_used_capacity_bytes': 'string', 'pool_used_iops': 'string', 'pool_used_throughput': 'string', 'pool_user_written_bytes': 'string', 'total_provisioned_disk_capacity_gb': 'string', 'total_provisioned_disk_iops': 'string', 'total_provisioned_disk_throughput': 'string'}]] (Computed)
  status = ['list', ['object', {'disk_count': 'string', 'last_resize_timestamp': 'string', 'max_total_provisioned_disk_capacity_gb': 'string', 'pool_used_capacity_bytes': 'string', 'pool_used_iops': 'string', 'pool_used_throughput': 'string', 'pool_user_written_bytes': 'string', 'total_provisioned_disk_capacity_gb': 'string', 'total_provisioned_disk_iops': 'string', 'total_provisioned_disk_throughput': 'string'}]] (Computed)
  terraform_labels = ['map', 'string'] (Computed)
  zone = string (Optional, Computed)

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    update = string (Optional)
  }
}
