resource "google_dataproc_session_template" "name" {
  name = string (Required)
  create_time = string (Computed)
  creator = string (Computed)
  effective_labels = ['map', 'string'] (Computed)
  id = string (Optional, Computed)
  labels = ['map', 'string'] (Optional)
  location = string (Optional)
  project = string (Optional, Computed)
  terraform_labels = ['map', 'string'] (Computed)
  update_time = string (Computed)
  uuid = string (Computed)

  environment_config block "list" (Optional) {

    execution_config block "list" (Optional) {
      idle_ttl = string (Optional)
      kms_key = string (Optional)
      network_tags = ['list', 'string'] (Optional)
      service_account = string (Optional, Computed)
      staging_bucket = string (Optional)
      subnetwork_uri = string (Optional)
      ttl = string (Optional, Computed)

      authentication_config block "list" (Optional) {
        user_workload_authentication_type = string (Optional)
      }
    }

    peripherals_config block "list" (Optional) {
      metastore_service = string (Optional)

      spark_history_server_config block "list" (Optional) {
        dataproc_cluster = string (Optional)
      }
    }
  }

  jupyter_session block "list" (Optional) {
    display_name = string (Optional)
    kernel = string (Optional)
  }

  runtime_config block "list" (Optional) {
    container_image = string (Optional)
    effective_properties = ['map', 'string'] (Computed)
    properties = ['map', 'string'] (Optional)
    version = string (Optional)
  }

  spark_connect_session block "list" (Optional) {
  }

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    update = string (Optional)
  }
}
