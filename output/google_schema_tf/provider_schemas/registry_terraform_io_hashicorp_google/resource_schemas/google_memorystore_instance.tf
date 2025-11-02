resource "google_memorystore_instance" "name" {
  instance_id = string (Required)
  location = string (Required)
  shard_count = number (Required)
  authorization_mode = string (Optional, Computed)
  available_maintenance_versions = ['list', 'string'] (Computed)
  backup_collection = string (Computed)
  create_time = string (Computed)
  deletion_protection_enabled = bool (Optional)
  discovery_endpoints = ['list', ['object', {'address': 'string', 'network': 'string', 'port': 'number'}]] (Computed)
  effective_labels = ['map', 'string'] (Computed)
  effective_maintenance_version = string (Computed)
  endpoints = ['list', ['object', {'connections': ['list', ['object', {'psc_auto_connection': ['list', ['object', {'connection_type': 'string', 'forwarding_rule': 'string', 'ip_address': 'string', 'network': 'string', 'port': 'number', 'project_id': 'string', 'psc_connection_id': 'string', 'service_attachment': 'string'}]]}]]}]] (Computed)
  engine_configs = ['map', 'string'] (Optional)
  engine_version = string (Optional, Computed)
  id = string (Optional, Computed)
  kms_key = string (Optional)
  labels = ['map', 'string'] (Optional)
  maintenance_schedule = ['list', ['object', {'end_time': 'string', 'schedule_deadline_time': 'string', 'start_time': 'string'}]] (Computed)
  maintenance_version = string (Optional)
  managed_server_ca = ['list', ['object', {'ca_certs': ['list', ['object', {'certificates': ['list', 'string']}]]}]] (Computed)
  mode = string (Optional, Computed)
  name = string (Computed)
  node_config = ['list', ['object', {'size_gb': 'number'}]] (Computed)
  node_type = string (Optional, Computed)
  project = string (Optional, Computed)
  psc_attachment_details = ['list', ['object', {'connection_type': 'string', 'service_attachment': 'string'}]] (Computed)
  psc_auto_connections = ['list', ['object', {'connection_type': 'string', 'forwarding_rule': 'string', 'ip_address': 'string', 'network': 'string', 'port': 'number', 'project_id': 'string', 'psc_connection_id': 'string', 'psc_connection_status': 'string', 'service_attachment': 'string'}]] (Computed)
  replica_count = number (Optional, Computed)
  state = string (Computed)
  state_info = ['list', ['object', {'update_info': ['list', ['object', {'target_engine_version': 'string', 'target_node_type': 'string', 'target_replica_count': 'number', 'target_shard_count': 'number'}]]}]] (Computed)
  terraform_labels = ['map', 'string'] (Computed)
  transit_encryption_mode = string (Optional, Computed)
  uid = string (Computed)
  update_time = string (Computed)

  automated_backup_config block "list" (Optional) {
    retention = string (Required)

    fixed_frequency_schedule block "list" (Required) {

      start_time block "list" (Required) {
        hours = number (Required)
      }
    }
  }

  cross_instance_replication_config block "list" (Optional) {
    instance_role = string (Optional)
    membership = ['list', ['object', {'primary_instance': ['list', ['object', {'instance': 'string', 'uid': 'string'}]], 'secondary_instance': ['list', ['object', {'instance': 'string', 'uid': 'string'}]]}]] (Computed)
    update_time = string (Computed)

    primary_instance block "list" (Optional) {
      instance = string (Optional)
      uid = string (Computed)
    }

    secondary_instances block "list" (Optional) {
      instance = string (Optional)
      uid = string (Computed)
    }
  }

  desired_auto_created_endpoints block "list" (Optional) {
    network = string (Required)
    project_id = string (Required)
  }

  desired_psc_auto_connections block "list" (Optional) {
    network = string (Required)
    project_id = string (Required)
  }

  gcs_source block "list" (Optional) {
    uris = ['set', 'string'] (Required)
  }

  maintenance_policy block "list" (Optional) {
    create_time = string (Computed)
    update_time = string (Computed)

    weekly_maintenance_window block "list" (Optional) {
      day = string (Required)
      duration = string (Computed)

      start_time block "list" (Required) {
        hours = number (Optional)
        minutes = number (Optional)
        nanos = number (Optional)
        seconds = number (Optional)
      }
    }
  }

  managed_backup_source block "list" (Optional) {
    backup = string (Required)
  }

  persistence_config block "list" (Optional) {
    mode = string (Optional, Computed)

    aof_config block "list" (Optional) {
      append_fsync = string (Optional, Computed)
    }

    rdb_config block "list" (Optional) {
      rdb_snapshot_period = string (Optional, Computed)
      rdb_snapshot_start_time = string (Optional, Computed)
    }
  }

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    update = string (Optional)
  }

  zone_distribution_config block "list" (Optional) {
    mode = string (Optional, Computed)
    zone = string (Optional)
  }
}
