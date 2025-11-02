resource "aws_sagemaker_user_profile" "name" {
  domain_id = string (Required)
  user_profile_name = string (Required)
  arn = string (Computed)
  home_efs_file_system_uid = string (Computed)
  id = string (Optional, Computed)
  region = string (Optional, Computed)
  single_sign_on_user_identifier = string (Optional)
  single_sign_on_user_value = string (Optional)
  tags = ['map', 'string'] (Optional)
  tags_all = ['map', 'string'] (Optional, Computed)

  user_settings block "list" (Optional) {
    execution_role = string (Required)
    auto_mount_home_efs = string (Optional, Computed)
    default_landing_uri = string (Optional)
    security_groups = ['set', 'string'] (Optional)
    studio_web_portal = string (Optional, Computed)

    canvas_app_settings block "list" (Optional) {

      direct_deploy_settings block "list" (Optional) {
        status = string (Optional)
      }

      emr_serverless_settings block "list" (Optional) {
        execution_role_arn = string (Optional)
        status = string (Optional)
      }

      generative_ai_settings block "list" (Optional) {
        amazon_bedrock_role_arn = string (Optional)
      }

      identity_provider_oauth_settings block "list" (Optional) {
        secret_arn = string (Required)
        data_source_name = string (Optional)
        status = string (Optional)
      }

      kendra_settings block "list" (Optional) {
        status = string (Optional)
      }

      model_register_settings block "list" (Optional) {
        cross_account_model_register_role_arn = string (Optional)
        status = string (Optional)
      }

      time_series_forecasting_settings block "list" (Optional) {
        amazon_forecast_role_arn = string (Optional)
        status = string (Optional)
      }

      workspace_settings block "list" (Optional) {
        s3_artifact_path = string (Optional)
        s3_kms_key_id = string (Optional)
      }
    }

    code_editor_app_settings block "list" (Optional) {
      built_in_lifecycle_config_arn = string (Optional)
      lifecycle_config_arns = ['set', 'string'] (Optional)

      app_lifecycle_management block "list" (Optional) {

        idle_settings block "list" (Optional) {
          idle_timeout_in_minutes = number (Optional)
          lifecycle_management = string (Optional)
          max_idle_timeout_in_minutes = number (Optional)
          min_idle_timeout_in_minutes = number (Optional)
        }
      }

      custom_image block "list" (Optional) {
        app_image_config_name = string (Required)
        image_name = string (Required)
        image_version_number = number (Optional)
      }

      default_resource_spec block "list" (Optional) {
        instance_type = string (Optional)
        lifecycle_config_arn = string (Optional)
        sagemaker_image_arn = string (Optional)
        sagemaker_image_version_alias = string (Optional)
        sagemaker_image_version_arn = string (Optional)
      }
    }

    custom_file_system_config block "list" (Optional) {

      efs_file_system_config block "list" (Optional) {
        file_system_id = string (Required)
        file_system_path = string (Optional)
      }
    }

    custom_posix_user_config block "list" (Optional) {
      gid = number (Required)
      uid = number (Required)
    }

    jupyter_lab_app_settings block "list" (Optional) {
      built_in_lifecycle_config_arn = string (Optional)
      lifecycle_config_arns = ['set', 'string'] (Optional)

      app_lifecycle_management block "list" (Optional) {

        idle_settings block "list" (Optional) {
          idle_timeout_in_minutes = number (Optional)
          lifecycle_management = string (Optional)
          max_idle_timeout_in_minutes = number (Optional)
          min_idle_timeout_in_minutes = number (Optional)
        }
      }

      code_repository block "set" (Optional) {
        repository_url = string (Required)
      }

      custom_image block "list" (Optional) {
        app_image_config_name = string (Required)
        image_name = string (Required)
        image_version_number = number (Optional)
      }

      default_resource_spec block "list" (Optional) {
        instance_type = string (Optional)
        lifecycle_config_arn = string (Optional)
        sagemaker_image_arn = string (Optional)
        sagemaker_image_version_alias = string (Optional)
        sagemaker_image_version_arn = string (Optional)
      }

      emr_settings block "list" (Optional) {
        assumable_role_arns = ['set', 'string'] (Optional)
        execution_role_arns = ['set', 'string'] (Optional)
      }
    }

    jupyter_server_app_settings block "list" (Optional) {
      lifecycle_config_arns = ['set', 'string'] (Optional)

      code_repository block "set" (Optional) {
        repository_url = string (Required)
      }

      default_resource_spec block "list" (Optional) {
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

      default_resource_spec block "list" (Optional) {
        instance_type = string (Optional)
        lifecycle_config_arn = string (Optional)
        sagemaker_image_arn = string (Optional)
        sagemaker_image_version_alias = string (Optional)
        sagemaker_image_version_arn = string (Optional)
      }
    }

    r_session_app_settings block "list" (Optional) {

      custom_image block "list" (Optional) {
        app_image_config_name = string (Required)
        image_name = string (Required)
        image_version_number = number (Optional)
      }

      default_resource_spec block "list" (Optional) {
        instance_type = string (Optional)
        lifecycle_config_arn = string (Optional)
        sagemaker_image_arn = string (Optional)
        sagemaker_image_version_alias = string (Optional)
        sagemaker_image_version_arn = string (Optional)
      }
    }

    r_studio_server_pro_app_settings block "list" (Optional) {
      access_status = string (Optional)
      user_group = string (Optional)
    }

    sharing_settings block "list" (Optional) {
      notebook_output_option = string (Optional)
      s3_kms_key_id = string (Optional)
      s3_output_path = string (Optional)
    }

    space_storage_settings block "list" (Optional) {

      default_ebs_storage_settings block "list" (Optional) {
        default_ebs_volume_size_in_gb = number (Required)
        maximum_ebs_volume_size_in_gb = number (Required)
      }
    }

    studio_web_portal_settings block "list" (Optional) {
      hidden_app_types = ['set', 'string'] (Optional)
      hidden_instance_types = ['set', 'string'] (Optional)
      hidden_ml_tools = ['set', 'string'] (Optional)
    }

    tensor_board_app_settings block "list" (Optional) {

      default_resource_spec block "list" (Optional) {
        instance_type = string (Optional)
        lifecycle_config_arn = string (Optional)
        sagemaker_image_arn = string (Optional)
        sagemaker_image_version_alias = string (Optional)
        sagemaker_image_version_arn = string (Optional)
      }
    }
  }
}
