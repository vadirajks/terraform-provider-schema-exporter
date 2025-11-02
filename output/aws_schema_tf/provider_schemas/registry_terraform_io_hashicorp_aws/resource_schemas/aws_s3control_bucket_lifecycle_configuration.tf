resource "aws_s3control_bucket_lifecycle_configuration" "name" {
  bucket = string (Required)
  id = string (Optional, Computed)
  region = string (Optional, Computed)

  rule block "set" (Required) {
    id = string (Required)
    status = string (Optional)

    abort_incomplete_multipart_upload block "list" (Optional) {
      days_after_initiation = number (Required)
    }

    expiration block "list" (Optional) {
      date = string (Optional)
      days = number (Optional)
      expired_object_delete_marker = bool (Optional)
    }

    filter block "list" (Optional) {
      prefix = string (Optional)
      tags = ['map', 'string'] (Optional)
    }
  }
}
