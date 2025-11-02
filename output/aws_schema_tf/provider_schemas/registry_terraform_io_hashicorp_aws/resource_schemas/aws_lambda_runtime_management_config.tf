resource "aws_lambda_runtime_management_config" "name" {
  function_name = string (Required)
  function_arn = string (Computed)
  qualifier = string (Optional)
  region = string (Optional, Computed)
  runtime_version_arn = string (Optional)
  update_runtime_on = string (Optional)
}
