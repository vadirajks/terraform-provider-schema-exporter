resource "aws_finspace_kx_database" "name" {
  environment_id = string (Required)
  name = string (Required)
  arn = string (Computed)
  created_timestamp = string (Computed)
  description = string (Optional)
  id = string (Optional, Computed)
  last_modified_timestamp = string (Computed)
  region = string (Optional, Computed)
  tags = ['map', 'string'] (Optional)
  tags_all = ['map', 'string'] (Optional, Computed)

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    update = string (Optional)
  }
}
