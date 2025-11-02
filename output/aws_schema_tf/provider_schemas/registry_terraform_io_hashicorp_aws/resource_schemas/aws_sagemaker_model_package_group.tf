resource "aws_sagemaker_model_package_group" "name" {
  model_package_group_name = string (Required)
  arn = string (Computed)
  id = string (Optional, Computed)
  model_package_group_description = string (Optional)
  region = string (Optional, Computed)
  tags = ['map', 'string'] (Optional)
  tags_all = ['map', 'string'] (Optional, Computed)
}
