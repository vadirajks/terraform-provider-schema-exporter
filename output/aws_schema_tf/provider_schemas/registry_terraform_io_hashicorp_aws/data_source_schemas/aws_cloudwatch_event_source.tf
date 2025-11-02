data "aws_cloudwatch_event_source" "name" {
  arn = string (Computed)
  created_by = string (Computed)
  id = string (Optional, Computed)
  name = string (Computed)
  name_prefix = string (Optional)
  region = string (Optional, Computed)
  state = string (Computed)
}
