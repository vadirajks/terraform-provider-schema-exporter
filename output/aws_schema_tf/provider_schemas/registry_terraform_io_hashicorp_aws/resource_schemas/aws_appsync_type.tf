resource "aws_appsync_type" "name" {
  api_id = string (Required)
  definition = string (Required)
  format = string (Required)
  arn = string (Computed)
  description = string (Computed)
  id = string (Optional, Computed)
  name = string (Computed)
  region = string (Optional, Computed)
}
