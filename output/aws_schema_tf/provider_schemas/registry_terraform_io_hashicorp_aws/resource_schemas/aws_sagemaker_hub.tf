resource "aws_sagemaker_hub" "name" {
  hub_description = string (Required)
  hub_name = string (Required)
  arn = string (Computed)
  hub_display_name = string (Optional)
  hub_search_keywords = ['set', 'string'] (Optional)
  id = string (Optional, Computed)
  region = string (Optional, Computed)
  tags = ['map', 'string'] (Optional)
  tags_all = ['map', 'string'] (Optional, Computed)

  s3_storage_config block "list" (Optional) {
    s3_output_path = string (Optional)
  }
}
