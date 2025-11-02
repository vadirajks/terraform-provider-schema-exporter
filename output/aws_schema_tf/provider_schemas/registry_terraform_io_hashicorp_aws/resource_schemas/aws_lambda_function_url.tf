resource "aws_lambda_function_url" "name" {
  authorization_type = string (Required)
  function_name = string (Required)
  function_arn = string (Computed)
  function_url = string (Computed)
  id = string (Optional, Computed)
  invoke_mode = string (Optional)
  qualifier = string (Optional)
  region = string (Optional, Computed)
  url_id = string (Computed)

  cors block "list" (Optional) {
    allow_credentials = bool (Optional)
    allow_headers = ['set', 'string'] (Optional)
    allow_methods = ['set', 'string'] (Optional)
    allow_origins = ['set', 'string'] (Optional)
    expose_headers = ['set', 'string'] (Optional)
    max_age = number (Optional)
  }

  timeouts block "single" (Optional) {
    create = string (Optional)
  }
}
