resource "aws_s3_bucket_object_lock_configuration" "name" {
  bucket = string (Required)
  expected_bucket_owner = string (Optional)
  id = string (Optional, Computed)
  object_lock_enabled = string (Optional)
  region = string (Optional, Computed)
  token = string (Optional)

  rule block "list" (Optional) {

    default_retention block "list" (Required) {
      days = number (Optional)
      mode = string (Optional)
      years = number (Optional)
    }
  }
}
