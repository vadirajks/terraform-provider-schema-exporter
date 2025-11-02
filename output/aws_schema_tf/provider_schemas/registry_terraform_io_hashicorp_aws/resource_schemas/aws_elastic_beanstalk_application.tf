resource "aws_elastic_beanstalk_application" "name" {
  name = string (Required)
  arn = string (Computed)
  description = string (Optional)
  id = string (Optional, Computed)
  region = string (Optional, Computed)
  tags = ['map', 'string'] (Optional)
  tags_all = ['map', 'string'] (Optional, Computed)

  appversion_lifecycle block "list" (Optional) {
    service_role = string (Required)
    delete_source_from_s3 = bool (Optional)
    max_age_in_days = number (Optional)
    max_count = number (Optional)
  }
}
