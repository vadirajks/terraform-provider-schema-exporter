data "aws_lambda_function_url" "name" {
  function_name = string (Required)
  authorization_type = string (Computed)
  cors = ['list', ['object', {'allow_credentials': 'bool', 'allow_headers': ['list', 'string'], 'allow_methods': ['list', 'string'], 'allow_origins': ['list', 'string'], 'expose_headers': ['list', 'string'], 'max_age': 'number'}]] (Computed)
  creation_time = string (Computed)
  function_arn = string (Computed)
  function_url = string (Computed)
  id = string (Optional, Computed)
  invoke_mode = string (Computed)
  last_modified_time = string (Computed)
  qualifier = string (Optional)
  region = string (Optional, Computed)
  url_id = string (Computed)
}
