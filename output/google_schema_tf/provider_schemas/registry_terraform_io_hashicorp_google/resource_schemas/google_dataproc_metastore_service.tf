resource "google_dataproc_metastore_service" "name" {
  service_id = string (Required)
  artifact_gcs_uri = string (Computed)
  create_time = string (Computed)
  database_type = string (Optional)
  deletion_protection = bool (Optional)
  effective_labels = ['map', 'string'] (Computed)
  endpoint_uri = string (Computed)
  id = string (Optional, Computed)
  labels = ['map', 'string'] (Optional)
  location = string (Optional)
  name = string (Computed)
  network = string (Optional, Computed)
  port = number (Optional, Computed)
  project = string (Optional, Computed)
  release_channel = string (Optional)
  state = string (Computed)
  state_message = string (Computed)
  tags = ['map', 'string'] (Optional)
  terraform_labels = ['map', 'string'] (Computed)
  tier = string (Optional, Computed)
  uid = string (Computed)
  update_time = string (Computed)

  encryption_config block "list" (Optional) {
    kms_key = string (Required)
  }

  hive_metastore_config block "list" (Optional) {
    version = string (Required)
    config_overrides = ['map', 'string'] (Optional, Computed)
    endpoint_protocol = string (Optional)

    auxiliary_versions block "set" (Optional) {
      key = string (Required)
      version = string (Required)
      config_overrides = ['map', 'string'] (Optional)
    }

    kerberos_config block "list" (Optional) {
      krb5_config_gcs_uri = string (Required)
      principal = string (Required)

      keytab block "list" (Required) {
        cloud_secret = string (Required)
      }
    }
  }

  maintenance_window block "list" (Optional) {
    day_of_week = string (Required)
    hour_of_day = number (Required)
  }

  metadata_integration block "list" (Optional) {

    data_catalog_config block "list" (Required) {
      enabled = bool (Required)
    }
  }

  network_config block "list" (Optional) {

    consumers block "list" (Required) {
      subnetwork = string (Required)
      endpoint_uri = string (Computed)
    }
  }

  scaling_config block "list" (Optional) {
    instance_size = string (Optional)
    scaling_factor = number (Optional)

    autoscaling_config block "list" (Optional) {
      autoscaling_enabled = bool (Optional)
      autoscaling_factor = number (Computed)

      limit_config block "list" (Optional) {
        max_scaling_factor = number (Optional, Computed)
        min_scaling_factor = number (Optional, Computed)
      }
    }
  }

  scheduled_backup block "list" (Optional) {
    backup_location = string (Required)
    cron_schedule = string (Optional)
    enabled = bool (Optional, Computed)
    time_zone = string (Optional, Computed)
  }

  telemetry_config block "list" (Optional) {
    log_format = string (Optional)
  }

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    update = string (Optional)
  }
}
