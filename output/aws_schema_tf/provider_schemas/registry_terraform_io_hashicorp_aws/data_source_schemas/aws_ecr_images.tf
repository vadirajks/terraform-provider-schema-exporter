data "aws_ecr_images" "name" {
  repository_name = string (Required)
  image_ids = ['list', ['object', {'image_digest': 'string', 'image_tag': 'string'}]] (Computed)
  region = string (Optional, Computed)
  registry_id = string (Optional)
}
