resource "aws_mskconnect_worker_configuration" "name" {
  name = string (Required)
  properties_file_content = string (Required)
  arn = string (Computed)
  description = string (Optional)
  id = string (Optional, Computed)
  latest_revision = number (Computed)
  region = string (Optional, Computed)
  tags = ['map', 'string'] (Optional)
  tags_all = ['map', 'string'] (Optional, Computed)

  timeouts block "single" (Optional) {
    delete = string (Optional)
  }
}
