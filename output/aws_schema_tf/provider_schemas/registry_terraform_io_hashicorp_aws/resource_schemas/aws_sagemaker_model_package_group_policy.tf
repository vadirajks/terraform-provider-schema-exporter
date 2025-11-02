resource "aws_sagemaker_model_package_group_policy" "name" {
  model_package_group_name = string (Required)
  resource_policy = string (Required)
  id = string (Optional, Computed)
  region = string (Optional, Computed)
}
