resource "aws_s3_bucket_request_payment_configuration" "name" {
  bucket = string (Required)
  payer = string (Required)
  expected_bucket_owner = string (Optional)
  id = string (Optional, Computed)
  region = string (Optional, Computed)
}
