resource "aws_imagebuilder_container_recipe" "name" {
  container_type = string (Required)
  name = string (Required)
  parent_image = string (Required)
  version = string (Required)
  arn = string (Computed)
  date_created = string (Computed)
  description = string (Optional)
  dockerfile_template_data = string (Optional, Computed)
  dockerfile_template_uri = string (Optional)
  encrypted = bool (Computed)
  id = string (Optional, Computed)
  kms_key_id = string (Optional)
  owner = string (Computed)
  platform = string (Computed)
  platform_override = string (Optional)
  region = string (Optional, Computed)
  tags = ['map', 'string'] (Optional)
  tags_all = ['map', 'string'] (Optional, Computed)
  working_directory = string (Optional)

  component block "list" (Required) {
    component_arn = string (Required)

    parameter block "set" (Optional) {
      name = string (Required)
      value = string (Required)
    }
  }

  instance_configuration block "list" (Optional) {
    image = string (Optional)

    block_device_mapping block "set" (Optional) {
      device_name = string (Optional)
      no_device = bool (Optional, Computed)
      virtual_name = string (Optional)

      ebs block "list" (Optional) {
        delete_on_termination = string (Optional)
        encrypted = string (Optional)
        iops = number (Optional)
        kms_key_id = string (Optional)
        snapshot_id = string (Optional)
        throughput = number (Optional)
        volume_size = number (Optional)
        volume_type = string (Optional)
      }
    }
  }

  target_repository block "list" (Required) {
    repository_name = string (Required)
    service = string (Required)
  }
}
