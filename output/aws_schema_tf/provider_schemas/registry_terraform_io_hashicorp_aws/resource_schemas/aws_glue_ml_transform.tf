resource "aws_glue_ml_transform" "name" {
  name = string (Required)
  role_arn = string (Required)
  arn = string (Computed)
  description = string (Optional)
  glue_version = string (Optional, Computed)
  id = string (Optional, Computed)
  label_count = number (Computed)
  max_capacity = number (Optional, Computed)
  max_retries = number (Optional)
  number_of_workers = number (Optional)
  region = string (Optional, Computed)
  schema = ['list', ['object', {'data_type': 'string', 'name': 'string'}]] (Computed)
  tags = ['map', 'string'] (Optional)
  tags_all = ['map', 'string'] (Optional, Computed)
  timeout = number (Optional)
  worker_type = string (Optional)

  input_record_tables block "list" (Required) {
    database_name = string (Required)
    table_name = string (Required)
    catalog_id = string (Optional)
    connection_name = string (Optional)
  }

  parameters block "list" (Required) {
    transform_type = string (Required)

    find_matches_parameters block "list" (Required) {
      accuracy_cost_trade_off = number (Optional)
      enforce_provided_labels = bool (Optional)
      precision_recall_trade_off = number (Optional)
      primary_key_column_name = string (Optional)
    }
  }
}
