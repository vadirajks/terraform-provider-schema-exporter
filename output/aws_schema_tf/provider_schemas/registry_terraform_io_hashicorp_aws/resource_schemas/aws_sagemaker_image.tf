resource "aws_sagemaker_image" "name" {
  image_name = string (Required)
  role_arn = string (Required)
  arn = string (Computed)
  description = string (Optional)
  display_name = string (Optional)
  id = string (Optional, Computed)
  region = string (Optional, Computed)
  tags = ['map', 'string'] (Optional)
  tags_all = ['map', 'string'] (Optional, Computed)
}
