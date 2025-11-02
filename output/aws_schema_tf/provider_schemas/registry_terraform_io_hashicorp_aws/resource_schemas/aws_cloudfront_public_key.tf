resource "aws_cloudfront_public_key" "name" {
  encoded_key = string (Required)
  caller_reference = string (Computed)
  comment = string (Optional)
  etag = string (Computed)
  id = string (Optional, Computed)
  name = string (Optional, Computed)
  name_prefix = string (Optional, Computed)
}
