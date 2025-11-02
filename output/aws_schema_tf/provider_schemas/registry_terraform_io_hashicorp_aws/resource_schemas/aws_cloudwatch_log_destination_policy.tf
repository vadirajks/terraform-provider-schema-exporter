resource "aws_cloudwatch_log_destination_policy" "name" {
  access_policy = string (Required)
  destination_name = string (Required)
  force_update = bool (Optional)
  id = string (Optional, Computed)
  region = string (Optional, Computed)
}
