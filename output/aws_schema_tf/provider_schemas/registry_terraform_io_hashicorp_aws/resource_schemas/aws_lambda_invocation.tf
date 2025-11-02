resource "aws_lambda_invocation" "name" {
  function_name = string (Required)
  input = string (Required)
  id = string (Optional, Computed)
  lifecycle_scope = string (Optional)
  qualifier = string (Optional)
  region = string (Optional, Computed)
  result = string (Computed)
  terraform_key = string (Optional)
  triggers = ['map', 'string'] (Optional)
}
