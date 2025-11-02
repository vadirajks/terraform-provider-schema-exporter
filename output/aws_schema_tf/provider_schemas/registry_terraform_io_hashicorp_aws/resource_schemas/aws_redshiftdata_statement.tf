resource "aws_redshiftdata_statement" "name" {
  database = string (Required)
  sql = string (Required)
  cluster_identifier = string (Optional)
  db_user = string (Optional)
  id = string (Optional, Computed)
  region = string (Optional, Computed)
  secret_arn = string (Optional)
  statement_name = string (Optional)
  with_event = bool (Optional)
  workgroup_name = string (Optional)

  parameters block "list" (Optional) {
    name = string (Required)
    value = string (Required)
  }

  timeouts block "single" (Optional) {
    create = string (Optional)
  }
}
