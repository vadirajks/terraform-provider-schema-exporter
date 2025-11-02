data "aws_billing_service_account" "name" {
  arn = string (Computed)
  id = string (Optional, Computed)
}
