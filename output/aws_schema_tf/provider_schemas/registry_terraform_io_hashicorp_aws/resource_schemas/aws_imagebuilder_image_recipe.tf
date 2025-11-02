resource "aws_imagebuilder_image_recipe" "name" {
  name = string (Required)
  parent_image = string (Required)
  version = string (Required)
  ami_tags = ['map', 'string'] (Optional)
  arn = string (Computed)
  date_created = string (Computed)
  description = string (Optional)
  id = string (Optional, Computed)
  owner = string (Computed)
  platform = string (Computed)
  region = string (Optional, Computed)
  tags = ['map', 'string'] (Optional)
  tags_all = ['map', 'string'] (Optional, Computed)
  user_data_base64 = string (Optional, Computed)
  working_directory = string (Optional)

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

  component block "list" (Required) {
    component_arn = string (Required)

    parameter block "set" (Optional) {
      name = string (Required)
      value = string (Required)
    }
  }

  systems_manager_agent block "list" (Optional) {
    uninstall_after_build = bool (Required)
  }
}
