resource "aws_securityhub_product_subscription" "name" {
  product_arn = string (Required)
  arn = string (Computed)
  id = string (Optional, Computed)
  region = string (Optional, Computed)
}
