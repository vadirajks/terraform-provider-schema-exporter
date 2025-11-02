resource "aws_amplify_webhook" "name" {
  app_id = string (Required)
  branch_name = string (Required)
  arn = string (Computed)
  description = string (Optional)
  id = string (Optional, Computed)
  region = string (Optional, Computed)
  url = string (Computed)
}
