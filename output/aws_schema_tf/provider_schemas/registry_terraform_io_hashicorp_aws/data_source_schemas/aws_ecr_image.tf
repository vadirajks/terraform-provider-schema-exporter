data "aws_ecr_image" "name" {
  repository_name = string (Required)
  id = string (Optional, Computed)
  image_digest = string (Optional, Computed)
  image_pushed_at = number (Computed)
  image_size_in_bytes = number (Computed)
  image_tag = string (Optional)
  image_tags = ['list', 'string'] (Computed)
  image_uri = string (Computed)
  most_recent = bool (Optional)
  region = string (Optional, Computed)
  registry_id = string (Optional, Computed)
}
