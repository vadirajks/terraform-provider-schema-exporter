resource "aws_sagemaker_app_image_config" "name" {
  app_image_config_name = string (Required)
  arn = string (Computed)
  id = string (Optional, Computed)
  region = string (Optional, Computed)
  tags = ['map', 'string'] (Optional)
  tags_all = ['map', 'string'] (Optional, Computed)

  code_editor_app_image_config block "list" (Optional) {

    container_config block "list" (Optional) {
      container_arguments = ['list', 'string'] (Optional)
      container_entrypoint = ['list', 'string'] (Optional)
      container_environment_variables = ['map', 'string'] (Optional)
    }

    file_system_config block "list" (Optional) {
      default_gid = number (Optional)
      default_uid = number (Optional)
      mount_path = string (Optional)
    }
  }

  jupyter_lab_image_config block "list" (Optional) {

    container_config block "list" (Optional) {
      container_arguments = ['list', 'string'] (Optional)
      container_entrypoint = ['list', 'string'] (Optional)
      container_environment_variables = ['map', 'string'] (Optional)
    }

    file_system_config block "list" (Optional) {
      default_gid = number (Optional)
      default_uid = number (Optional)
      mount_path = string (Optional)
    }
  }

  kernel_gateway_image_config block "list" (Optional) {

    file_system_config block "list" (Optional) {
      default_gid = number (Optional)
      default_uid = number (Optional)
      mount_path = string (Optional)
    }

    kernel_spec block "list" (Required) {
      name = string (Required)
      display_name = string (Optional)
    }
  }
}
