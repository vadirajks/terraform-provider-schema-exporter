resource "aws_cleanrooms_configured_table" "name" {
  allowed_columns = ['set', 'string'] (Required)
  analysis_method = string (Required)
  name = string (Required)
  arn = string (Computed)
  create_time = string (Computed)
  description = string (Optional)
  id = string (Optional, Computed)
  region = string (Optional, Computed)
  tags = ['map', 'string'] (Optional)
  tags_all = ['map', 'string'] (Optional, Computed)
  update_time = string (Computed)

  table_reference block "list" (Required) {
    database_name = string (Required)
    table_name = string (Required)
  }

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    update = string (Optional)
  }
}
