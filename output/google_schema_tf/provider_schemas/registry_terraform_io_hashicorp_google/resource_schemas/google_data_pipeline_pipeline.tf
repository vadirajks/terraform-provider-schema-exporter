resource "google_data_pipeline_pipeline" "name" {
  name = string (Required)
  state = string (Required)
  type = string (Required)
  create_time = string (Computed)
  display_name = string (Optional)
  id = string (Optional, Computed)
  job_count = number (Computed)
  last_update_time = string (Computed)
  pipeline_sources = ['map', 'string'] (Optional)
  project = string (Optional, Computed)
  region = string (Optional)
  scheduler_service_account_email = string (Optional, Computed)

  schedule_info block "list" (Optional) {
    next_job_time = string (Computed)
    schedule = string (Optional)
    time_zone = string (Optional)
  }

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    update = string (Optional)
  }

  workload block "list" (Optional) {

    dataflow_flex_template_request block "list" (Optional) {
      location = string (Required)
      project_id = string (Required)
      validate_only = bool (Optional)

      launch_parameter block "list" (Required) {
        job_name = string (Required)
        container_spec_gcs_path = string (Optional)
        launch_options = ['map', 'string'] (Optional)
        parameters = ['map', 'string'] (Optional)
        transform_name_mappings = ['map', 'string'] (Optional)
        update = bool (Optional)

        environment block "list" (Optional) {
          additional_experiments = ['list', 'string'] (Optional)
          additional_user_labels = ['map', 'string'] (Optional)
          enable_streaming_engine = bool (Optional)
          flexrs_goal = string (Optional)
          ip_configuration = string (Optional)
          kms_key_name = string (Optional)
          machine_type = string (Optional)
          max_workers = number (Optional)
          network = string (Optional)
          num_workers = number (Optional)
          service_account_email = string (Optional)
          subnetwork = string (Optional)
          temp_location = string (Optional)
          worker_region = string (Optional)
          worker_zone = string (Optional)
          zone = string (Optional)
        }
      }
    }

    dataflow_launch_template_request block "list" (Optional) {
      project_id = string (Required)
      gcs_path = string (Optional)
      location = string (Optional)
      validate_only = bool (Optional)

      launch_parameters block "list" (Optional) {
        job_name = string (Required)
        parameters = ['map', 'string'] (Optional)
        transform_name_mapping = ['map', 'string'] (Optional)
        update = bool (Optional)

        environment block "list" (Optional) {
          additional_experiments = ['list', 'string'] (Optional)
          additional_user_labels = ['map', 'string'] (Optional)
          bypass_temp_dir_validation = bool (Optional)
          enable_streaming_engine = bool (Optional)
          ip_configuration = string (Optional)
          kms_key_name = string (Optional)
          machine_type = string (Optional)
          max_workers = number (Optional)
          network = string (Optional, Computed)
          num_workers = number (Optional)
          service_account_email = string (Optional)
          subnetwork = string (Optional)
          temp_location = string (Optional)
          worker_region = string (Optional)
          worker_zone = string (Optional)
          zone = string (Optional)
        }
      }
    }
  }
}
