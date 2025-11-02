resource "aws_kinesis_resource_policy" "name" {
  policy = string (Required)
  resource_arn = string (Required)
  id = string (Computed)
  region = string (Optional, Computed)
}
