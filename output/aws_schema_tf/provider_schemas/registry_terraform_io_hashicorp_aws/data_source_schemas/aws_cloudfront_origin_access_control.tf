data "aws_cloudfront_origin_access_control" "name" {
  id = string (Required)
  arn = string (Computed)
  description = string (Computed)
  etag = string (Computed)
  name = string (Computed)
  origin_access_control_origin_type = string (Computed)
  signing_behavior = string (Computed)
  signing_protocol = string (Computed)
}
