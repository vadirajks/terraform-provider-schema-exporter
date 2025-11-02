resource "aws_sagemaker_monitoring_schedule" "name" {
  arn = string (Computed)
  id = string (Optional, Computed)
  name = string (Optional, Computed)
  region = string (Optional, Computed)
  tags = ['map', 'string'] (Optional)
  tags_all = ['map', 'string'] (Optional, Computed)

  monitoring_schedule_config block "list" (Required) {
    monitoring_job_definition_name = string (Required)
    monitoring_type = string (Required)

    schedule_config block "list" (Optional) {
      schedule_expression = string (Required)
    }
  }
}
