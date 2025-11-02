resource "aws_lambda_function_recursion_config" "name" {
  function_name = string (Required)
  recursive_loop = string (Required)
  region = string (Optional, Computed)
}
