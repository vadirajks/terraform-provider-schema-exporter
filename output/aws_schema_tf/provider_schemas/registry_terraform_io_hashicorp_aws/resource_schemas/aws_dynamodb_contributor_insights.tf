resource "aws_dynamodb_contributor_insights" "name" {
  table_name = string (Required)
  id = string (Optional, Computed)
  index_name = string (Optional)
  mode = string (Optional, Computed)
  region = string (Optional, Computed)

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
  }
}
