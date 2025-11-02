resource "aws_athena_prepared_statement" "name" {
  name = string (Required)
  query_statement = string (Required)
  workgroup = string (Required)
  description = string (Optional)
  id = string (Optional, Computed)
  region = string (Optional, Computed)

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    update = string (Optional)
  }
}
