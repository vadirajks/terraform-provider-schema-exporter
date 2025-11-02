resource "aws_s3_bucket_accelerate_configuration" "name" {
  bucket = string (Required)
  status = string (Required)
  expected_bucket_owner = string (Optional)
  id = string (Optional, Computed)
  region = string (Optional, Computed)
}
