resource "aws_s3_bucket_ownership_controls" "name" {
  bucket = string (Required)
  id = string (Optional, Computed)
  region = string (Optional, Computed)

  rule block "list" (Required) {
    object_ownership = string (Required)
  }
}
