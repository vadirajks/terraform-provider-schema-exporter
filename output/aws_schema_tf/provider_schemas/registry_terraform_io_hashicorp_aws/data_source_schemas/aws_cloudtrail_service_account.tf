data "aws_cloudtrail_service_account" "name" {
  arn = string (Computed)
  id = string (Optional, Computed)
  region = string (Optional, Computed)
}
