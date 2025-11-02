resource "aws_athena_named_query" "name" {
  database = string (Required)
  name = string (Required)
  query = string (Required)
  description = string (Optional)
  id = string (Optional, Computed)
  region = string (Optional, Computed)
  workgroup = string (Optional)
}
