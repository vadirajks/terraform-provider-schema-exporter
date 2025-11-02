resource "google_redis_cluster" "name" {
  shard_count = number (Required)
  authorization_mode = string (Optional)
  available_maintenance_versions = ['list', 'string'] (Computed)
  backup_collection = string (Computed)
  create_time = string (Computed)
  deletion_protection_enabled = bool (Optional)
  discovery_endpoints = ['list', ['object', {'address': 'string', 'port': 'number', 'psc_config': ['list', ['object', {'network': 'string'}]]}]] (Computed)
  effective_maintenance_version = string (Computed)
  id = string (Optional, Computed)
  kms_key = string (Optional)
  maintenance_schedule = ['list', ['object', {'end_time': 'string', 'schedule_deadline_time': 'string', 'start_time': 'string'}]] (Computed)
  maintenance_version = string (Optional)
  managed_server_ca = ['list', ['object', {'ca_certs': ['list', ['object', {'certificates': ['list', 'string']}]]}]] (Computed)
  name = string (Optional, Computed)
  node_type = string (Optional, Computed)
  precise_size_gb = number (Computed)
  project = string (Optional, Computed)
  psc_connections = ['list', ['object', {'address': 'string', 'forwarding_rule': 'string', 'network': 'string', 'project_id': 'string', 'psc_connection_id': 'string'}]] (Computed)
  psc_service_attachments = ['list', ['object', {'connection_type': 'string', 'service_attachment': 'string'}]] (Computed)
  redis_configs = ['map', 'string'] (Optional)
  region = string (Optional, Computed)
  replica_count = number (Optional)
  size_gb = number (Computed)
  state = string (Computed)
  state_info = ['list', ['object', {'update_info': ['list', ['object', {'target_replica_count': 'number', 'target_shard_count': 'number'}]]}]] (Computed)
  transit_encryption_mode = string (Optional)
  uid = string (Computed)

  automated_backup_config block "list" (Optional) {
    retention = string (Required)

    fixed_frequency_schedule block "list" (Required) {

      start_time block "list" (Required) {
        hours = number (Required)
      }
    }
  }

  cross_cluster_replication_config block "list" (Optional) {
    cluster_role = string (Optional)
    membership = ['list', ['object', {'primary_cluster': ['list', ['object', {'cluster': 'string', 'uid': 'string'}]], 'secondary_clusters': ['list', ['object', {'cluster': 'string', 'uid': 'string'}]]}]] (Computed)
    update_time = string (Computed)

    primary_cluster block "list" (Optional) {
      cluster = string (Optional)
      uid = string (Computed)
    }

    secondary_clusters block "list" (Optional) {
      cluster = string (Optional)
      uid = string (Computed)
    }
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

  psc_configs block "list" (Optional) {
    network = string (Required)
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
