resource "aws_codepipeline_custom_action_type" "name" {
  category = string (Required)
  provider_name = string (Required)
  version = string (Required)
  arn = string (Computed)
  id = string (Optional, Computed)
  owner = string (Computed)
  region = string (Optional, Computed)
  tags = ['map', 'string'] (Optional)
  tags_all = ['map', 'string'] (Optional, Computed)

  configuration_property block "list" (Optional) {
    key = bool (Required)
    name = string (Required)
    required = bool (Required)
    secret = bool (Required)
    description = string (Optional)
    queryable = bool (Optional)
    type = string (Optional)
  }

  input_artifact_details block "list" (Required) {
    maximum_count = number (Required)
    minimum_count = number (Required)
  }

  output_artifact_details block "list" (Required) {
    maximum_count = number (Required)
    minimum_count = number (Required)
  }

  settings block "list" (Optional) {
    entity_url_template = string (Optional)
    execution_url_template = string (Optional)
    revision_url_template = string (Optional)
    third_party_configuration_url = string (Optional)
  }
}
