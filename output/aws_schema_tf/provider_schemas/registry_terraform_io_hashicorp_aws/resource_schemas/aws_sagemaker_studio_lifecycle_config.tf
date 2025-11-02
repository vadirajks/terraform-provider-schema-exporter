resource "aws_sagemaker_studio_lifecycle_config" "name" {
  studio_lifecycle_config_app_type = string (Required)
  studio_lifecycle_config_content = string (Required)
  studio_lifecycle_config_name = string (Required)
  arn = string (Computed)
  id = string (Optional, Computed)
  region = string (Optional, Computed)
  tags = ['map', 'string'] (Optional)
  tags_all = ['map', 'string'] (Optional, Computed)
}
