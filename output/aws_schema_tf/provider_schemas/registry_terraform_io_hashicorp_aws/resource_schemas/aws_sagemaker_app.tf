resource "aws_sagemaker_app" "name" {
  app_name = string (Required)
  app_type = string (Required)
  domain_id = string (Required)
  arn = string (Computed)
  id = string (Optional, Computed)
  region = string (Optional, Computed)
  space_name = string (Optional)
  tags = ['map', 'string'] (Optional)
  tags_all = ['map', 'string'] (Optional, Computed)
  user_profile_name = string (Optional)

  resource_spec block "list" (Optional) {
    instance_type = string (Optional)
    lifecycle_config_arn = string (Optional)
    sagemaker_image_arn = string (Optional, Computed)
    sagemaker_image_version_alias = string (Optional)
    sagemaker_image_version_arn = string (Optional)
  }
}
