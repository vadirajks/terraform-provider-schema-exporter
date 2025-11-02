resource "aws_mskconnect_custom_plugin" "name" {
  content_type = string (Required)
  name = string (Required)
  arn = string (Computed)
  description = string (Optional)
  id = string (Optional, Computed)
  latest_revision = number (Computed)
  region = string (Optional, Computed)
  state = string (Computed)
  tags = ['map', 'string'] (Optional)
  tags_all = ['map', 'string'] (Optional, Computed)

  location block "list" (Required) {

    s3 block "list" (Required) {
      bucket_arn = string (Required)
      file_key = string (Required)
      object_version = string (Optional)
    }
  }

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
  }
}
