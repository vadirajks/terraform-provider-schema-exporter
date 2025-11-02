resource "aws_sagemaker_notebook_instance_lifecycle_configuration" "name" {
  arn = string (Computed)
  id = string (Optional, Computed)
  name = string (Optional)
  on_create = string (Optional)
  on_start = string (Optional)
  region = string (Optional, Computed)
  tags = ['map', 'string'] (Optional)
  tags_all = ['map', 'string'] (Optional, Computed)
}
