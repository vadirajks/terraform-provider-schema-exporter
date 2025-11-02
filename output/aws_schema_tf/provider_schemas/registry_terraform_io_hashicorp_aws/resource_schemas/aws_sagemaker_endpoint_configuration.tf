resource "aws_sagemaker_endpoint_configuration" "name" {
  arn = string (Computed)
  id = string (Optional, Computed)
  kms_key_arn = string (Optional)
  name = string (Optional, Computed)
  name_prefix = string (Optional, Computed)
  region = string (Optional, Computed)
  tags = ['map', 'string'] (Optional)
  tags_all = ['map', 'string'] (Optional, Computed)

  async_inference_config block "list" (Optional) {

    client_config block "list" (Optional) {
      max_concurrent_invocations_per_instance = number (Optional)
    }

    output_config block "list" (Required) {
      s3_output_path = string (Required)
      kms_key_id = string (Optional)
      s3_failure_path = string (Optional)

      notification_config block "list" (Optional) {
        error_topic = string (Optional)
        include_inference_response_in = ['set', 'string'] (Optional)
        success_topic = string (Optional)
      }
    }
  }

  data_capture_config block "list" (Optional) {
    destination_s3_uri = string (Required)
    initial_sampling_percentage = number (Required)
    enable_capture = bool (Optional)
    kms_key_id = string (Optional)

    capture_content_type_header block "list" (Optional) {
      csv_content_types = ['set', 'string'] (Optional)
      json_content_types = ['set', 'string'] (Optional)
    }

    capture_options block "list" (Required) {
      capture_mode = string (Required)
    }
  }

  production_variants block "list" (Required) {
    model_name = string (Required)
    accelerator_type = string (Optional)
    container_startup_health_check_timeout_in_seconds = number (Optional)
    enable_ssm_access = bool (Optional)
    inference_ami_version = string (Optional)
    initial_instance_count = number (Optional)
    initial_variant_weight = number (Optional)
    instance_type = string (Optional)
    model_data_download_timeout_in_seconds = number (Optional)
    variant_name = string (Optional, Computed)
    volume_size_in_gb = number (Optional, Computed)

    core_dump_config block "list" (Optional) {
      destination_s3_uri = string (Required)
      kms_key_id = string (Optional)
    }

    managed_instance_scaling block "list" (Optional) {
      max_instance_count = number (Optional)
      min_instance_count = number (Optional)
      status = string (Optional)
    }

    routing_config block "list" (Optional) {
      routing_strategy = string (Required)
    }

    serverless_config block "list" (Optional) {
      max_concurrency = number (Required)
      memory_size_in_mb = number (Required)
      provisioned_concurrency = number (Optional)
    }
  }

  shadow_production_variants block "list" (Optional) {
    model_name = string (Required)
    accelerator_type = string (Optional)
    container_startup_health_check_timeout_in_seconds = number (Optional)
    enable_ssm_access = bool (Optional)
    inference_ami_version = string (Optional)
    initial_instance_count = number (Optional)
    initial_variant_weight = number (Optional)
    instance_type = string (Optional)
    model_data_download_timeout_in_seconds = number (Optional)
    variant_name = string (Optional, Computed)
    volume_size_in_gb = number (Optional)

    core_dump_config block "list" (Optional) {
      destination_s3_uri = string (Required)
      kms_key_id = string (Required)
    }

    managed_instance_scaling block "list" (Optional) {
      max_instance_count = number (Optional)
      min_instance_count = number (Optional)
      status = string (Optional)
    }

    routing_config block "list" (Optional) {
      routing_strategy = string (Required)
    }

    serverless_config block "list" (Optional) {
      max_concurrency = number (Required)
      memory_size_in_mb = number (Required)
      provisioned_concurrency = number (Optional)
    }
  }
}
