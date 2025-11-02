resource "aws_imagebuilder_distribution_configuration" "name" {
  name = string (Required)
  arn = string (Computed)
  date_created = string (Computed)
  date_updated = string (Computed)
  description = string (Optional)
  id = string (Optional, Computed)
  region = string (Optional, Computed)
  tags = ['map', 'string'] (Optional)
  tags_all = ['map', 'string'] (Optional, Computed)

  distribution block "set" (Required) {
    region = string (Required)
    license_configuration_arns = ['set', 'string'] (Optional)

    ami_distribution_configuration block "list" (Optional) {
      ami_tags = ['map', 'string'] (Optional)
      description = string (Optional)
      kms_key_id = string (Optional)
      name = string (Optional)
      target_account_ids = ['set', 'string'] (Optional)

      launch_permission block "list" (Optional) {
        organization_arns = ['set', 'string'] (Optional)
        organizational_unit_arns = ['set', 'string'] (Optional)
        user_groups = ['set', 'string'] (Optional)
        user_ids = ['set', 'string'] (Optional)
      }
    }

    container_distribution_configuration block "list" (Optional) {
      container_tags = ['set', 'string'] (Optional)
      description = string (Optional)

      target_repository block "list" (Required) {
        repository_name = string (Required)
        service = string (Required)
      }
    }

    fast_launch_configuration block "set" (Optional) {
      account_id = string (Required)
      enabled = bool (Required)
      max_parallel_launches = number (Optional)

      launch_template block "list" (Optional) {
        launch_template_id = string (Optional)
        launch_template_name = string (Optional)
        launch_template_version = string (Optional)
      }

      snapshot_configuration block "list" (Optional) {
        target_resource_count = number (Optional)
      }
    }

    launch_template_configuration block "set" (Optional) {
      launch_template_id = string (Required)
      account_id = string (Optional)
      default = bool (Optional)
    }

    s3_export_configuration block "list" (Optional) {
      disk_image_format = string (Required)
      role_name = string (Required)
      s3_bucket = string (Required)
      s3_prefix = string (Optional)
    }

    ssm_parameter_configuration block "set" (Optional) {
      parameter_name = string (Required)
      ami_account_id = string (Optional)
      data_type = string (Optional)
    }
  }
}
