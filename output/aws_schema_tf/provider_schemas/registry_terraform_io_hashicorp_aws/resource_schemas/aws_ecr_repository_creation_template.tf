resource "aws_ecr_repository_creation_template" "name" {
  applied_for = ['set', 'string'] (Required)
  prefix = string (Required)
  custom_role_arn = string (Optional)
  description = string (Optional)
  id = string (Optional, Computed)
  image_tag_mutability = string (Optional)
  lifecycle_policy = string (Optional)
  region = string (Optional, Computed)
  registry_id = string (Computed)
  repository_policy = string (Optional)
  resource_tags = ['map', 'string'] (Optional)

  encryption_configuration block "list" (Optional) {
    encryption_type = string (Optional)
    kms_key = string (Optional, Computed)
  }

  image_tag_mutability_exclusion_filter block "list" (Optional) {
    filter = string (Required)
    filter_type = string (Required)
  }
}
