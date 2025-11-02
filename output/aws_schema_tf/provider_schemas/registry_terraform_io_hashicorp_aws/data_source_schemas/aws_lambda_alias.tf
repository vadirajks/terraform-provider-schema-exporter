data "aws_lambda_alias" "name" {
  function_name = string (Required)
  name = string (Required)
  arn = string (Computed)
  description = string (Computed)
  function_version = string (Computed)
  id = string (Optional, Computed)
  invoke_arn = string (Computed)
  region = string (Optional, Computed)
}
