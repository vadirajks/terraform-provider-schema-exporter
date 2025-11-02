data "aws_mskconnect_worker_configuration" "name" {
  name = string (Required)
  arn = string (Computed)
  description = string (Computed)
  id = string (Optional, Computed)
  latest_revision = number (Computed)
  properties_file_content = string (Computed)
  region = string (Optional, Computed)
  tags = ['map', 'string'] (Optional, Computed)
}
