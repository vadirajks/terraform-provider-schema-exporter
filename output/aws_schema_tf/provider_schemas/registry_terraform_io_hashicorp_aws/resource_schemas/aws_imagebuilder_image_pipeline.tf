resource "aws_imagebuilder_image_pipeline" "name" {
  infrastructure_configuration_arn = string (Required)
  name = string (Required)
  arn = string (Computed)
  container_recipe_arn = string (Optional)
  date_created = string (Computed)
  date_last_run = string (Computed)
  date_next_run = string (Computed)
  date_updated = string (Computed)
  description = string (Optional)
  distribution_configuration_arn = string (Optional)
  enhanced_image_metadata_enabled = bool (Optional)
  execution_role = string (Optional)
  id = string (Optional, Computed)
  image_recipe_arn = string (Optional)
  platform = string (Computed)
  region = string (Optional, Computed)
  status = string (Optional)
  tags = ['map', 'string'] (Optional)
  tags_all = ['map', 'string'] (Optional, Computed)

  image_scanning_configuration block "list" (Optional) {
    image_scanning_enabled = bool (Optional)

    ecr_configuration block "list" (Optional) {
      container_tags = ['set', 'string'] (Optional)
      repository_name = string (Optional)
    }
  }

  image_tests_configuration block "list" (Optional) {
    image_tests_enabled = bool (Optional)
    timeout_minutes = number (Optional)
  }

  schedule block "list" (Optional) {
    schedule_expression = string (Required)
    pipeline_execution_start_condition = string (Optional)
    timezone = string (Optional, Computed)
  }

  workflow block "list" (Optional) {
    workflow_arn = string (Required)
    on_failure = string (Optional)
    parallel_group = string (Optional)

    parameter block "set" (Optional) {
      name = string (Required)
      value = string (Required)
    }
  }
}
