resource "aws_cloudwatch_log_delivery_destination_policy" "name" {
  delivery_destination_name = string (Required)
  delivery_destination_policy = string (Required)
  region = string (Optional, Computed)
}
