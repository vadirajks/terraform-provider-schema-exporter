resource "aws_glue_crawler" "name" {
  database_name = string (Required)
  name = string (Required)
  role = string (Required)
  arn = string (Computed)
  classifiers = ['list', 'string'] (Optional)
  configuration = string (Optional)
  description = string (Optional)
  id = string (Optional, Computed)
  region = string (Optional, Computed)
  schedule = string (Optional)
  security_configuration = string (Optional)
  table_prefix = string (Optional)
  tags = ['map', 'string'] (Optional)
  tags_all = ['map', 'string'] (Optional, Computed)

  catalog_target block "list" (Optional) {
    database_name = string (Required)
    tables = ['list', 'string'] (Required)
    connection_name = string (Optional)
    dlq_event_queue_arn = string (Optional)
    event_queue_arn = string (Optional)
  }

  delta_target block "list" (Optional) {
    delta_tables = ['set', 'string'] (Required)
    write_manifest = bool (Required)
    connection_name = string (Optional)
    create_native_delta_table = bool (Optional)
  }

  dynamodb_target block "list" (Optional) {
    path = string (Required)
    scan_all = bool (Optional)
    scan_rate = number (Optional)
  }

  hudi_target block "list" (Optional) {
    maximum_traversal_depth = number (Required)
    paths = ['set', 'string'] (Required)
    connection_name = string (Optional)
    exclusions = ['list', 'string'] (Optional)
  }

  iceberg_target block "list" (Optional) {
    maximum_traversal_depth = number (Required)
    paths = ['set', 'string'] (Required)
    connection_name = string (Optional)
    exclusions = ['list', 'string'] (Optional)
  }

  jdbc_target block "list" (Optional) {
    connection_name = string (Required)
    path = string (Required)
    enable_additional_metadata = ['list', 'string'] (Optional)
    exclusions = ['list', 'string'] (Optional)
  }

  lake_formation_configuration block "list" (Optional) {
    account_id = string (Optional, Computed)
    use_lake_formation_credentials = bool (Optional)
  }

  lineage_configuration block "list" (Optional) {
    crawler_lineage_settings = string (Optional)
  }

  mongodb_target block "list" (Optional) {
    connection_name = string (Required)
    path = string (Required)
    scan_all = bool (Optional)
  }

  recrawl_policy block "list" (Optional) {
    recrawl_behavior = string (Optional)
  }

  s3_target block "list" (Optional) {
    path = string (Required)
    connection_name = string (Optional)
    dlq_event_queue_arn = string (Optional)
    event_queue_arn = string (Optional)
    exclusions = ['list', 'string'] (Optional)
    sample_size = number (Optional)
  }

  schema_change_policy block "list" (Optional) {
    delete_behavior = string (Optional)
    update_behavior = string (Optional)
  }
}
