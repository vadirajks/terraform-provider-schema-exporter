resource "aws_apprunner_observability_configuration" "name" {
  observability_configuration_name = string (Required)
  arn = string (Computed)
  id = string (Optional, Computed)
  latest = bool (Computed)
  observability_configuration_revision = number (Computed)
  region = string (Optional, Computed)
  status = string (Computed)
  tags = ['map', 'string'] (Optional)
  tags_all = ['map', 'string'] (Optional, Computed)

  trace_configuration block "list" (Optional) {
    vendor = string (Optional)
  }
}
