resource "aws_appintegrations_data_integration" "name" {
  kms_key = string (Required)
  name = string (Required)
  source_uri = string (Required)
  arn = string (Computed)
  description = string (Optional)
  id = string (Optional, Computed)
  region = string (Optional, Computed)
  tags = ['map', 'string'] (Optional)
  tags_all = ['map', 'string'] (Optional, Computed)

  schedule_config block "list" (Required) {
    first_execution_from = string (Required)
    object = string (Required)
    schedule_expression = string (Required)
  }
}
