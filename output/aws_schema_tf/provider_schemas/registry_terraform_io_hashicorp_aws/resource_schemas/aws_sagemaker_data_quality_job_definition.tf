resource "aws_sagemaker_data_quality_job_definition" "name" {
  role_arn = string (Required)
  arn = string (Computed)
  id = string (Optional, Computed)
  name = string (Optional, Computed)
  region = string (Optional, Computed)
  tags = ['map', 'string'] (Optional)
  tags_all = ['map', 'string'] (Optional, Computed)

  data_quality_app_specification block "list" (Required) {
    image_uri = string (Required)
    environment = ['map', 'string'] (Optional)
    post_analytics_processor_source_uri = string (Optional)
    record_preprocessor_source_uri = string (Optional)
  }

  data_quality_baseline_config block "list" (Optional) {

    constraints_resource block "list" (Optional) {
      s3_uri = string (Optional)
    }

    statistics_resource block "list" (Optional) {
      s3_uri = string (Optional)
    }
  }

  data_quality_job_input block "list" (Required) {

    batch_transform_input block "list" (Optional) {
      data_captured_destination_s3_uri = string (Required)
      local_path = string (Optional)
      s3_data_distribution_type = string (Optional, Computed)
      s3_input_mode = string (Optional, Computed)

      dataset_format block "list" (Required) {

        csv block "list" (Optional) {
          header = bool (Optional)
        }

        json block "list" (Optional) {
          line = bool (Optional)
        }
      }
    }

    endpoint_input block "list" (Optional) {
      endpoint_name = string (Required)
      local_path = string (Optional)
      s3_data_distribution_type = string (Optional, Computed)
      s3_input_mode = string (Optional, Computed)
    }
  }

  data_quality_job_output_config block "list" (Required) {
    kms_key_id = string (Optional)

    monitoring_outputs block "list" (Required) {

      s3_output block "list" (Required) {
        s3_uri = string (Required)
        local_path = string (Optional)
        s3_upload_mode = string (Optional, Computed)
      }
    }
  }

  job_resources block "list" (Required) {

    cluster_config block "list" (Required) {
      instance_count = number (Required)
      instance_type = string (Required)
      volume_size_in_gb = number (Required)
      volume_kms_key_id = string (Optional)
    }
  }

  network_config block "list" (Optional) {
    enable_inter_container_traffic_encryption = bool (Optional)
    enable_network_isolation = bool (Optional)

    vpc_config block "list" (Optional) {
      security_group_ids = ['set', 'string'] (Required)
      subnets = ['set', 'string'] (Required)
    }
  }

  stopping_condition block "list" (Optional) {
    max_runtime_in_seconds = number (Optional, Computed)
  }
}
