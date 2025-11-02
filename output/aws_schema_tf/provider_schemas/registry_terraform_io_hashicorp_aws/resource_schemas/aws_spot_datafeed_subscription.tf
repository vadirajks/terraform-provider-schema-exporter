resource "aws_spot_datafeed_subscription" "name" {
  bucket = string (Required)
  id = string (Optional, Computed)
  prefix = string (Optional)
  region = string (Optional, Computed)
}
