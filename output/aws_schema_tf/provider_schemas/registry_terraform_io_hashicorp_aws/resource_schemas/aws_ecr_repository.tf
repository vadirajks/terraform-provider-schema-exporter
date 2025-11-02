resource "aws_ecr_repository" "name" {
  name = string (Required)
  arn = string (Computed)
  force_delete = bool (Optional)
  id = string (Optional, Computed)
  image_tag_mutability = string (Optional)
  region = string (Optional, Computed)
  registry_id = string (Computed)
  repository_url = string (Computed)
  tags = ['map', 'string'] (Optional)
  tags_all = ['map', 'string'] (Optional, Computed)

  encryption_configuration block "list" (Optional) {
    encryption_type = string (Optional)
    kms_key = string (Optional, Computed)
  }

  image_scanning_configuration block "list" (Optional) {
    scan_on_push = bool (Required)
  }

  image_tag_mutability_exclusion_filter block "list" (Optional) {
    filter = string (Required)
    filter_type = string (Required)
  }

  timeouts block "single" (Optional) {
    delete = string (Optional)
  }
}
