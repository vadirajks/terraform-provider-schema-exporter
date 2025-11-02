resource "aws_devicefarm_project" "name" {
  name = string (Required)
  arn = string (Computed)
  default_job_timeout_minutes = number (Optional)
  id = string (Optional, Computed)
  region = string (Optional, Computed)
  tags = ['map', 'string'] (Optional)
  tags_all = ['map', 'string'] (Optional, Computed)
}
