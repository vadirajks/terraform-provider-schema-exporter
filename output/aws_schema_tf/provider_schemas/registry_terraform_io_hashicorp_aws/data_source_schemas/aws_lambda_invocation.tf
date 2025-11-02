data "aws_lambda_invocation" "name" {
  function_name = string (Required)
  input = string (Required)
  id = string (Optional, Computed)
  qualifier = string (Optional)
  region = string (Optional, Computed)
  result = string (Computed)
}
