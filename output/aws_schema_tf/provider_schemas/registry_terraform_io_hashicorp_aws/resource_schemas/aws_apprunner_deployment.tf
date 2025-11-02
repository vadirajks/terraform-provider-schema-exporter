resource "aws_apprunner_deployment" "name" {
  service_arn = string (Required)
  id = string (Computed)
  operation_id = string (Computed)
  region = string (Optional, Computed)
  status = string (Computed)

  timeouts block "single" (Optional) {
    create = string (Optional)
  }
}
