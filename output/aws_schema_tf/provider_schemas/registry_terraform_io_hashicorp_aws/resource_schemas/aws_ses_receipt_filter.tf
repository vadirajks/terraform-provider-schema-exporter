resource "aws_ses_receipt_filter" "name" {
  cidr = string (Required)
  name = string (Required)
  policy = string (Required)
  arn = string (Computed)
  id = string (Optional, Computed)
  region = string (Optional, Computed)
}
