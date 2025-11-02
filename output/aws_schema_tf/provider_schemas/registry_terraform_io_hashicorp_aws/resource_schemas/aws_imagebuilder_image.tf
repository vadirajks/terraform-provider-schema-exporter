resource "aws_imagebuilder_image" "name" {
  infrastructure_configuration_arn = string (Required)
  arn = string (Computed)
  container_recipe_arn = string (Optional)
  date_created = string (Computed)
  distribution_configuration_arn = string (Optional)
  enhanced_image_metadata_enabled = bool (Optional)
  execution_role = string (Optional, Computed)
  id = string (Optional, Computed)
  image_recipe_arn = string (Optional)
  name = string (Computed)
  os_version = string (Computed)
  output_resources = ['list', ['object', {'amis': ['set', ['object', {'account_id': 'string', 'description': 'string', 'image': 'string', 'name': 'string', 'region': 'string'}]], 'containers': ['set', ['object', {'image_uris': ['set', 'string'], 'region': 'string'}]]}]] (Computed)
  platform = string (Computed)
  region = string (Optional, Computed)
  tags = ['map', 'string'] (Optional)
  tags_all = ['map', 'string'] (Optional, Computed)
  version = string (Computed)

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

  timeouts block "single" (Optional) {
    create = string (Optional)
  }

  workflow block "set" (Optional) {
    workflow_arn = string (Required)
    on_failure = string (Optional)
    parallel_group = string (Optional)

    parameter block "set" (Optional) {
      name = string (Required)
      value = string (Required)
    }
  }
}
