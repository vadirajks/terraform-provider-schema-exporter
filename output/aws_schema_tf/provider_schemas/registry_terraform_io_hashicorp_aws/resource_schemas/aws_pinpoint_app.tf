resource "aws_pinpoint_app" "name" {
  application_id = string (Computed)
  arn = string (Computed)
  id = string (Optional, Computed)
  name = string (Optional, Computed)
  name_prefix = string (Optional, Computed)
  region = string (Optional, Computed)
  tags = ['map', 'string'] (Optional)
  tags_all = ['map', 'string'] (Optional, Computed)

  campaign_hook block "list" (Optional) {
    lambda_function_name = string (Optional)
    mode = string (Optional)
    web_url = string (Optional)
  }

  limits block "list" (Optional) {
    daily = number (Optional)
    maximum_duration = number (Optional)
    messages_per_second = number (Optional)
    total = number (Optional)
  }

  quiet_time block "list" (Optional) {
    end = string (Optional)
    start = string (Optional)
  }
}
