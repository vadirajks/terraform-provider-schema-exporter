resource "aws_elastic_beanstalk_application_version" "name" {
  application = string (Required)
  bucket = string (Required)
  key = string (Required)
  name = string (Required)
  arn = string (Computed)
  description = string (Optional)
  force_delete = bool (Optional)
  id = string (Optional, Computed)
  process = bool (Optional)
  region = string (Optional, Computed)
  tags = ['map', 'string'] (Optional)
  tags_all = ['map', 'string'] (Optional, Computed)
}
