resource "aws_sagemaker_pipeline" "name" {
  pipeline_display_name = string (Required)
  pipeline_name = string (Required)
  arn = string (Computed)
  id = string (Optional, Computed)
  pipeline_definition = string (Optional)
  pipeline_description = string (Optional)
  region = string (Optional, Computed)
  role_arn = string (Optional)
  tags = ['map', 'string'] (Optional)
  tags_all = ['map', 'string'] (Optional, Computed)

  parallelism_configuration block "list" (Optional) {
    max_parallel_execution_steps = number (Required)
  }

  pipeline_definition_s3_location block "list" (Optional) {
    bucket = string (Required)
    object_key = string (Required)
    version_id = string (Optional)
  }
}
