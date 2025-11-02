resource "aws_s3_bucket_lifecycle_configuration" "name" {
  bucket = string (Required)
  expected_bucket_owner = string (Optional, Computed)
  id = string (Computed)
  region = string (Optional, Computed)
  transition_default_minimum_object_size = string (Optional, Computed)

  rule block "list" (Optional) {
    id = string (Required)
    status = string (Required)
    prefix = string (Optional, Computed)

    abort_incomplete_multipart_upload block "list" (Optional) {
      days_after_initiation = number (Optional)
    }

    expiration block "list" (Optional) {
      date = string (Optional)
      days = number (Optional, Computed)
      expired_object_delete_marker = bool (Optional, Computed)
    }

    filter block "list" (Optional) {
      object_size_greater_than = number (Optional, Computed)
      object_size_less_than = number (Optional, Computed)
      prefix = string (Optional, Computed)

      and block "list" (Optional) {
        object_size_greater_than = number (Optional, Computed)
        object_size_less_than = number (Optional, Computed)
        prefix = string (Optional, Computed)
        tags = ['map', 'string'] (Optional)
      }

      tag block "list" (Optional) {
        key = string (Required)
        value = string (Required)
      }
    }

    noncurrent_version_expiration block "list" (Optional) {
      noncurrent_days = number (Required)
      newer_noncurrent_versions = number (Optional)
    }

    noncurrent_version_transition block "set" (Optional) {
      noncurrent_days = number (Required)
      storage_class = string (Required)
      newer_noncurrent_versions = number (Optional)
    }

    transition block "set" (Optional) {
      storage_class = string (Required)
      date = string (Optional)
      days = number (Optional, Computed)
    }
  }

  timeouts block "single" (Optional) {
    create = string (Optional)
    update = string (Optional)
  }
}
