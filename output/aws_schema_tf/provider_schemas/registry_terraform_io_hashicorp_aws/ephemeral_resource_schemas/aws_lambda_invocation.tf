resource "aws_lambda_invocation" "name" { // Ephemeral Resource
  function_name = string (Required)
  payload = string (Required)
  client_context = string (Optional)
  executed_version = string (Computed)
  function_error = string (Computed)
  log_result = string (Computed)
  log_type = string (Optional)
  qualifier = string (Optional)
  region = string (Optional, Computed)
  result = string (Computed)
  status_code = number (Computed)
}
