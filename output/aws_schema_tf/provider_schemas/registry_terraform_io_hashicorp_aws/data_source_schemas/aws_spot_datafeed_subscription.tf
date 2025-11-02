data "aws_spot_datafeed_subscription" "name" {
  bucket = string (Computed)
  prefix = string (Computed)
  region = string (Optional, Computed)
}
