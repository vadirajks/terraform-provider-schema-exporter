resource "aws_lambda_alias" "name" {
  function_name = string (Required)
  function_version = string (Required)
  name = string (Required)
  arn = string (Computed)
  description = string (Optional)
  id = string (Optional, Computed)
  invoke_arn = string (Computed)
  region = string (Optional, Computed)

  routing_config block "list" (Optional) {
    additional_version_weights = ['map', 'number'] (Optional)
  }
}
