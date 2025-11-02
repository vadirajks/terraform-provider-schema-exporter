resource "aws_sagemaker_space" "name" {
  domain_id = string (Required)
  space_name = string (Required)
  arn = string (Computed)
  home_efs_file_system_uid = string (Computed)
  id = string (Optional, Computed)
  region = string (Optional, Computed)
  space_display_name = string (Optional)
  tags = ['map', 'string'] (Optional)
  tags_all = ['map', 'string'] (Optional, Computed)
  url = string (Computed)

  ownership_settings block "list" (Optional) {
    owner_user_profile_name = string (Required)
  }

  space_settings block "list" (Optional) {
    app_type = string (Optional)

    code_editor_app_settings block "list" (Optional) {

      app_lifecycle_management block "list" (Optional) {

        idle_settings block "list" (Optional) {
          idle_timeout_in_minutes = number (Optional)
        }
      }

      default_resource_spec block "list" (Required) {
        instance_type = string (Optional)
        lifecycle_config_arn = string (Optional)
        sagemaker_image_arn = string (Optional)
        sagemaker_image_version_alias = string (Optional)
        sagemaker_image_version_arn = string (Optional)
      }
    }

    custom_file_system block "list" (Optional) {

      efs_file_system block "list" (Required) {
        file_system_id = string (Required)
      }
    }

    jupyter_lab_app_settings block "list" (Optional) {

      app_lifecycle_management block "list" (Optional) {

        idle_settings block "list" (Optional) {
          idle_timeout_in_minutes = number (Optional)
        }
      }

      code_repository block "set" (Optional) {
        repository_url = string (Required)
      }

      default_resource_spec block "list" (Required) {
        instance_type = string (Optional)
        lifecycle_config_arn = string (Optional)
        sagemaker_image_arn = string (Optional)
        sagemaker_image_version_alias = string (Optional)
        sagemaker_image_version_arn = string (Optional)
      }
    }

    jupyter_server_app_settings block "list" (Optional) {
      lifecycle_config_arns = ['set', 'string'] (Optional)

      code_repository block "set" (Optional) {
        repository_url = string (Required)
      }

      default_resource_spec block "list" (Required) {
        instance_type = string (Optional)
        lifecycle_config_arn = string (Optional)
        sagemaker_image_arn = string (Optional)
        sagemaker_image_version_alias = string (Optional)
        sagemaker_image_version_arn = string (Optional)
      }
    }

    kernel_gateway_app_settings block "list" (Optional) {
      lifecycle_config_arns = ['set', 'string'] (Optional)

      custom_image block "list" (Optional) {
        app_image_config_name = string (Required)
        image_name = string (Required)
        image_version_number = number (Optional)
      }

      default_resource_spec block "list" (Required) {
        instance_type = string (Optional)
        lifecycle_config_arn = string (Optional)
        sagemaker_image_arn = string (Optional)
        sagemaker_image_version_alias = string (Optional)
        sagemaker_image_version_arn = string (Optional)
      }
    }

    space_storage_settings block "list" (Optional) {

      ebs_storage_settings block "list" (Required) {
        ebs_volume_size_in_gb = number (Required)
      }
    }
  }

  space_sharing_settings block "list" (Optional) {
    sharing_type = string (Required)
  }
}
