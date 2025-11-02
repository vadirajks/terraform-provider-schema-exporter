resource "aws_appsync_source_api_association" "name" {
  arn = string (Computed)
  association_id = string (Computed)
  description = string (Optional)
  id = string (Computed)
  merged_api_arn = string (Optional, Computed)
  merged_api_id = string (Optional, Computed)
  region = string (Optional, Computed)
  source_api_arn = string (Optional, Computed)
  source_api_association_config = ['list', ['object', {'merge_type': 'string'}]] (Optional, Computed)
  source_api_id = string (Optional, Computed)

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    update = string (Optional)
  }
}
