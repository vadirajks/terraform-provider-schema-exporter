resource "aws_s3_bucket_policy" "name" {
  bucket = string (Required)
  policy = string (Required)
  id = string (Optional, Computed)
  region = string (Optional, Computed)
}
