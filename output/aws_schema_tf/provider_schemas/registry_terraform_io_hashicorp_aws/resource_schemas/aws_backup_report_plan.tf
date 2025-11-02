resource "aws_backup_report_plan" "name" {
  name = string (Required)
  arn = string (Computed)
  creation_time = string (Computed)
  deployment_status = string (Computed)
  description = string (Optional)
  id = string (Optional, Computed)
  region = string (Optional, Computed)
  tags = ['map', 'string'] (Optional)
  tags_all = ['map', 'string'] (Optional, Computed)

  report_delivery_channel block "list" (Required) {
    s3_bucket_name = string (Required)
    formats = ['set', 'string'] (Optional)
    s3_key_prefix = string (Optional)
  }

  report_setting block "list" (Required) {
    report_template = string (Required)
    accounts = ['set', 'string'] (Optional)
    framework_arns = ['set', 'string'] (Optional)
    number_of_frameworks = number (Optional)
    organization_units = ['set', 'string'] (Optional)
    regions = ['set', 'string'] (Optional)
  }
}
