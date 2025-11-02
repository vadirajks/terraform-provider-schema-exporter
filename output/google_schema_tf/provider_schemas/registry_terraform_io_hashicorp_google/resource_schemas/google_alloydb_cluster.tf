resource "google_alloydb_cluster" "name" {
  cluster_id = string (Required)
  location = string (Required)
  annotations = ['map', 'string'] (Optional)
  backup_source = ['list', ['object', {'backup_name': 'string'}]] (Computed)
  cluster_type = string (Optional)
  continuous_backup_info = ['list', ['object', {'earliest_restorable_time': 'string', 'enabled_time': 'string', 'encryption_info': ['list', ['object', {'encryption_type': 'string', 'kms_key_versions': ['list', 'string']}]], 'schedule': ['list', 'string']}]] (Computed)
  database_version = string (Optional, Computed)
  deletion_policy = string (Optional)
  deletion_protection = bool (Optional)
  display_name = string (Optional)
  effective_annotations = ['map', 'string'] (Computed)
  effective_labels = ['map', 'string'] (Computed)
  encryption_info = ['list', ['object', {'encryption_type': 'string', 'kms_key_versions': ['list', 'string']}]] (Computed)
  etag = string (Optional)
  id = string (Optional, Computed)
  labels = ['map', 'string'] (Optional)
  migration_source = ['list', ['object', {'host_port': 'string', 'reference_id': 'string', 'source_type': 'string'}]] (Computed)
  name = string (Computed)
  project = string (Optional, Computed)
  reconciling = bool (Computed)
  skip_await_major_version_upgrade = bool (Optional)
  state = string (Computed)
  subscription_type = string (Optional, Computed)
  terraform_labels = ['map', 'string'] (Computed)
  trial_metadata = ['list', ['object', {'end_time': 'string', 'grace_end_time': 'string', 'start_time': 'string', 'upgrade_time': 'string'}]] (Computed)
  uid = string (Computed)

  automated_backup_policy block "list" (Optional) {
    backup_window = string (Optional, Computed)
    enabled = bool (Optional, Computed)
    labels = ['map', 'string'] (Optional)
    location = string (Optional, Computed)

    encryption_config block "list" (Optional) {
      kms_key_name = string (Optional)
    }

    quantity_based_retention block "list" (Optional) {
      count = number (Optional)
    }

    time_based_retention block "list" (Optional) {
      retention_period = string (Optional)
    }

    weekly_schedule block "list" (Optional) {
      days_of_week = ['list', 'string'] (Optional)

      start_times block "list" (Required) {
        hours = number (Optional)
        minutes = number (Optional)
        nanos = number (Optional)
        seconds = number (Optional)
      }
    }
  }

  continuous_backup_config block "list" (Optional) {
    enabled = bool (Optional)
    recovery_window_days = number (Optional, Computed)

    encryption_config block "list" (Optional) {
      kms_key_name = string (Optional)
    }
  }

  encryption_config block "list" (Optional) {
    kms_key_name = string (Optional)
  }

  initial_user block "list" (Optional) {
    password = string (Required)
    user = string (Optional)
  }

  maintenance_update_policy block "list" (Optional) {

    maintenance_windows block "list" (Optional) {
      day = string (Required)

      start_time block "list" (Required) {
        hours = number (Required)
        minutes = number (Optional)
        nanos = number (Optional)
        seconds = number (Optional)
      }
    }
  }

  network_config block "list" (Optional) {
    allocated_ip_range = string (Optional)
    network = string (Optional)
  }

  psc_config block "list" (Optional) {
    psc_enabled = bool (Optional)
    service_owned_project_number = number (Computed)
  }

  restore_backup_source block "list" (Optional) {
    backup_name = string (Required)
  }

  restore_continuous_backup_source block "list" (Optional) {
    cluster = string (Required)
    point_in_time = string (Required)
  }

  secondary_config block "list" (Optional) {
    primary_cluster_name = string (Required)
  }

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    update = string (Optional)
  }
}
