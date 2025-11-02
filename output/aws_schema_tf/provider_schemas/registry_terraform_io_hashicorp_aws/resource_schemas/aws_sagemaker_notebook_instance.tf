resource "aws_sagemaker_notebook_instance" "name" {
  instance_type = string (Required)
  name = string (Required)
  role_arn = string (Required)
  additional_code_repositories = ['set', 'string'] (Optional)
  arn = string (Computed)
  default_code_repository = string (Optional)
  direct_internet_access = string (Optional)
  id = string (Optional, Computed)
  kms_key_id = string (Optional)
  lifecycle_config_name = string (Optional)
  network_interface_id = string (Computed)
  platform_identifier = string (Optional, Computed)
  region = string (Optional, Computed)
  root_access = string (Optional)
  security_groups = ['set', 'string'] (Optional, Computed)
  subnet_id = string (Optional)
  tags = ['map', 'string'] (Optional)
  tags_all = ['map', 'string'] (Optional, Computed)
  url = string (Computed)
  volume_size = number (Optional)

  instance_metadata_service_configuration block "list" (Optional) {
    minimum_instance_metadata_service_version = string (Optional, Computed)
  }
}
