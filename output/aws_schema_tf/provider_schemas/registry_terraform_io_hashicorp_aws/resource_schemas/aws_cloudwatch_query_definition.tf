resource "aws_cloudwatch_query_definition" "name" {
  name = string (Required)
  query_string = string (Required)
  id = string (Optional, Computed)
  log_group_names = ['list', 'string'] (Optional)
  query_definition_id = string (Computed)
  region = string (Optional, Computed)
}
