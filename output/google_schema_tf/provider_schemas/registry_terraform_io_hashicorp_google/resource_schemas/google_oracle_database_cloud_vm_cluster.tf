resource "google_oracle_database_cloud_vm_cluster" "name" {
  cloud_vm_cluster_id = string (Required)
  exadata_infrastructure = string (Required)
  location = string (Required)
  backup_odb_subnet = string (Optional, Computed)
  backup_subnet_cidr = string (Optional)
  cidr = string (Optional)
  create_time = string (Computed)
  deletion_protection = bool (Optional)
  display_name = string (Optional)
  effective_labels = ['map', 'string'] (Computed)
  gcp_oracle_zone = string (Computed)
  id = string (Optional, Computed)
  labels = ['map', 'string'] (Optional)
  name = string (Computed)
  network = string (Optional)
  odb_network = string (Optional, Computed)
  odb_subnet = string (Optional, Computed)
  project = string (Optional, Computed)
  terraform_labels = ['map', 'string'] (Computed)

  properties block "list" (Optional) {
    cpu_core_count = number (Required)
    license_type = string (Required)
    cluster_name = string (Optional, Computed)
    compartment_id = string (Computed)
    data_storage_size_tb = number (Optional, Computed)
    db_node_storage_size_gb = number (Optional, Computed)
    db_server_ocids = ['list', 'string'] (Optional, Computed)
    disk_redundancy = string (Optional, Computed)
    dns_listener_ip = string (Computed)
    domain = string (Computed)
    gi_version = string (Optional)
    hostname = string (Computed)
    hostname_prefix = string (Optional)
    local_backup_enabled = bool (Optional)
    memory_size_gb = number (Optional, Computed)
    node_count = number (Optional, Computed)
    oci_url = string (Computed)
    ocid = string (Computed)
    ocpu_count = number (Optional, Computed)
    scan_dns = string (Computed)
    scan_dns_record_id = string (Computed)
    scan_ip_ids = ['list', 'string'] (Computed)
    scan_listener_port_tcp = number (Computed)
    scan_listener_port_tcp_ssl = number (Computed)
    shape = string (Computed)
    sparse_diskgroup_enabled = bool (Optional, Computed)
    ssh_public_keys = ['list', 'string'] (Optional)
    state = string (Computed)
    storage_size_gb = number (Computed)
    system_version = string (Computed)

    diagnostics_data_collection_options block "list" (Optional) {
      diagnostics_events_enabled = bool (Optional)
      health_monitoring_enabled = bool (Optional)
      incident_logs_enabled = bool (Optional)
    }

    time_zone block "list" (Optional) {
      id = string (Optional, Computed)
    }
  }

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    update = string (Optional)
  }
}
