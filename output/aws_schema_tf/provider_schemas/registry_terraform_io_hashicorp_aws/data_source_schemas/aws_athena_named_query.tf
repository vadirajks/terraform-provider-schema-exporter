data "aws_athena_named_query" "name" {
  name = string (Required)
  database = string (Computed)
  description = string (Computed)
  id = string (Optional, Computed)
  querystring = string (Computed)
  region = string (Optional, Computed)
  workgroup = string (Optional)
}
