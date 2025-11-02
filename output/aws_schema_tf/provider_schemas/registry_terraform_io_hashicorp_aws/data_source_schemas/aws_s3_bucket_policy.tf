data "aws_s3_bucket_policy" "name" {
  bucket = string (Required)
  id = string (Optional, Computed)
  policy = string (Computed)
  region = string (Optional, Computed)
}
