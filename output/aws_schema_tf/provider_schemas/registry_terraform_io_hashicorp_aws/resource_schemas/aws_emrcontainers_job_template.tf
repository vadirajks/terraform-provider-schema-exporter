resource "aws_emrcontainers_job_template" "name" {
  name = string (Required)
  arn = string (Computed)
  id = string (Optional, Computed)
  kms_key_arn = string (Optional)
  region = string (Optional, Computed)
  tags = ['map', 'string'] (Optional)
  tags_all = ['map', 'string'] (Optional, Computed)

  job_template_data block "list" (Required) {
    execution_role_arn = string (Required)
    release_label = string (Required)
    job_tags = ['map', 'string'] (Optional)

    configuration_overrides block "list" (Optional) {

      application_configuration block "list" (Optional) {
        classification = string (Required)
        properties = ['map', 'string'] (Optional)

        configurations block "list" (Optional) {
          classification = string (Optional)
          properties = ['map', 'string'] (Optional)
        }
      }

      monitoring_configuration block "list" (Optional) {
        persistent_app_ui = string (Optional)

        cloud_watch_monitoring_configuration block "list" (Optional) {
          log_group_name = string (Required)
          log_stream_name_prefix = string (Optional)
        }

        s3_monitoring_configuration block "list" (Optional) {
          log_uri = string (Required)
        }
      }
    }

    job_driver block "list" (Required) {

      spark_sql_job_driver block "list" (Optional) {
        entry_point = string (Optional)
        spark_sql_parameters = string (Optional)
      }

      spark_submit_job_driver block "list" (Optional) {
        entry_point = string (Required)
        entry_point_arguments = ['set', 'string'] (Optional)
        spark_submit_parameters = string (Optional)
      }
    }
  }

  timeouts block "single" (Optional) {
    delete = string (Optional)
  }
}
