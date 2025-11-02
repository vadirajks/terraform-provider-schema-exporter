resource "aws_m2_application" "name" {
  engine_type = string (Required)
  name = string (Required)
  application_id = string (Computed)
  arn = string (Computed)
  current_version = number (Computed)
  description = string (Optional)
  id = string (Computed)
  kms_key_id = string (Optional)
  region = string (Optional, Computed)
  role_arn = string (Optional)
  tags = ['map', 'string'] (Optional)
  tags_all = ['map', 'string'] (Computed)

  definition block "list" (Optional) {
    content = string (Optional)
    s3_location = string (Optional)
  }

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    update = string (Optional)
  }
}
