resource "aws_lambda_function_event_invoke_config" "name" {
  function_name = string (Required)
  id = string (Optional, Computed)
  maximum_event_age_in_seconds = number (Optional)
  maximum_retry_attempts = number (Optional)
  qualifier = string (Optional)
  region = string (Optional, Computed)

  destination_config block "list" (Optional) {

    on_failure block "list" (Optional) {
      destination = string (Required)
    }

    on_success block "list" (Optional) {
      destination = string (Required)
    }
  }
}
