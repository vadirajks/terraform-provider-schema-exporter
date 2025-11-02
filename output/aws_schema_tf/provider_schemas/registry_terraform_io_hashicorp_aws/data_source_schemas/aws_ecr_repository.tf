data "aws_ecr_repository" "name" {
  name = string (Required)
  arn = string (Computed)
  encryption_configuration = ['list', ['object', {'encryption_type': 'string', 'kms_key': 'string'}]] (Computed)
  id = string (Optional, Computed)
  image_scanning_configuration = ['list', ['object', {'scan_on_push': 'bool'}]] (Computed)
  image_tag_mutability = string (Computed)
  image_tag_mutability_exclusion_filter = ['list', ['object', {'filter': 'string', 'filter_type': 'string'}]] (Computed)
  most_recent_image_tags = ['list', 'string'] (Computed)
  region = string (Optional, Computed)
  registry_id = string (Optional, Computed)
  repository_url = string (Computed)
  tags = ['map', 'string'] (Optional, Computed)
}
