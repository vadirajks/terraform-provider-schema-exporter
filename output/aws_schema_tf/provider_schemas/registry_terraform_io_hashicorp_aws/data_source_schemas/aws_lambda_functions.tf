data "aws_lambda_functions" "name" {
  function_arns = ['list', 'string'] (Computed)
  function_names = ['list', 'string'] (Computed)
  id = string (Optional, Computed)
  region = string (Optional, Computed)
}
