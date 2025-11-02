resource "aws_lambda_provisioned_concurrency_config" "name" {
  function_name = string (Required)
  provisioned_concurrent_executions = number (Required)
  qualifier = string (Required)
  id = string (Optional, Computed)
  region = string (Optional, Computed)
  skip_destroy = bool (Optional)

  timeouts block "single" (Optional) {
    create = string (Optional)
    update = string (Optional)
  }
}
