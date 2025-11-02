resource "aws_m2_deployment" "name" {
  application_id = string (Required)
  application_version = number (Required)
  environment_id = string (Required)
  start = bool (Required)
  deployment_id = string (Computed)
  force_stop = bool (Optional)
  id = string (Computed)
  region = string (Optional, Computed)

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    update = string (Optional)
  }
}
