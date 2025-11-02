data "aws_sagemaker_prebuilt_ecr_image" "name" {
  repository_name = string (Required)
  dns_suffix = string (Optional)
  id = string (Optional, Computed)
  image_tag = string (Optional)
  region = string (Optional, Computed)
  registry_id = string (Computed)
  registry_path = string (Computed)
}
