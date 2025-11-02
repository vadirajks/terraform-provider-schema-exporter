resource "aws_glue_data_quality_ruleset" "name" {
  name = string (Required)
  ruleset = string (Required)
  arn = string (Computed)
  created_on = string (Computed)
  description = string (Optional)
  id = string (Optional, Computed)
  last_modified_on = string (Computed)
  recommendation_run_id = string (Computed)
  region = string (Optional, Computed)
  tags = ['map', 'string'] (Optional)
  tags_all = ['map', 'string'] (Optional, Computed)

  target_table block "list" (Optional) {
    database_name = string (Required)
    table_name = string (Required)
    catalog_id = string (Optional)
  }
}
