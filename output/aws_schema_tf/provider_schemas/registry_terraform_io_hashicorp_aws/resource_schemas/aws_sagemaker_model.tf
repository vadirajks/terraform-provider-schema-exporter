resource "aws_sagemaker_model" "name" {
  execution_role_arn = string (Required)
  arn = string (Computed)
  enable_network_isolation = bool (Optional)
  id = string (Optional, Computed)
  name = string (Optional, Computed)
  region = string (Optional, Computed)
  tags = ['map', 'string'] (Optional)
  tags_all = ['map', 'string'] (Optional, Computed)

  container block "list" (Optional) {
    container_hostname = string (Optional)
    environment = ['map', 'string'] (Optional)
    image = string (Optional)
    inference_specification_name = string (Optional)
    mode = string (Optional)
    model_data_url = string (Optional)
    model_package_name = string (Optional)

    image_config block "list" (Optional) {
      repository_access_mode = string (Required)

      repository_auth_config block "list" (Optional) {
        repository_credentials_provider_arn = string (Required)
      }
    }

    model_data_source block "list" (Optional) {

      s3_data_source block "list" (Required) {
        compression_type = string (Required)
        s3_data_type = string (Required)
        s3_uri = string (Required)

        model_access_config block "list" (Optional) {
          accept_eula = bool (Required)
        }
      }
    }

    multi_model_config block "list" (Optional) {
      model_cache_setting = string (Optional)
    }
  }

  inference_execution_config block "list" (Optional) {
    mode = string (Required)
  }

  primary_container block "list" (Optional) {
    container_hostname = string (Optional)
    environment = ['map', 'string'] (Optional)
    image = string (Optional)
    inference_specification_name = string (Optional)
    mode = string (Optional)
    model_data_url = string (Optional)
    model_package_name = string (Optional)

    image_config block "list" (Optional) {
      repository_access_mode = string (Required)

      repository_auth_config block "list" (Optional) {
        repository_credentials_provider_arn = string (Required)
      }
    }

    model_data_source block "list" (Optional) {

      s3_data_source block "list" (Required) {
        compression_type = string (Required)
        s3_data_type = string (Required)
        s3_uri = string (Required)

        model_access_config block "list" (Optional) {
          accept_eula = bool (Required)
        }
      }
    }

    multi_model_config block "list" (Optional) {
      model_cache_setting = string (Optional)
    }
  }

  vpc_config block "list" (Optional) {
    security_group_ids = ['set', 'string'] (Required)
    subnets = ['set', 'string'] (Required)
  }
}
