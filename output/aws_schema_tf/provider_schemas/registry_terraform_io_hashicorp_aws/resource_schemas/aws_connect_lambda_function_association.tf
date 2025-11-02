resource "aws_connect_lambda_function_association" "name" {
  function_arn = string (Required)
  instance_id = string (Required)
  id = string (Optional, Computed)
  region = string (Optional, Computed)
}
