resource "aws_dms_endpoint" "name" {
  endpoint_id = string (Required)
  endpoint_type = string (Required)
  engine_name = string (Required)
  certificate_arn = string (Optional, Computed)
  database_name = string (Optional)
  endpoint_arn = string (Computed)
  extra_connection_attributes = string (Optional, Computed)
  id = string (Optional, Computed)
  kms_key_arn = string (Optional, Computed)
  password = string (Optional)
  pause_replication_tasks = bool (Optional)
  port = number (Optional)
  region = string (Optional, Computed)
  secrets_manager_access_role_arn = string (Optional)
  secrets_manager_arn = string (Optional)
  server_name = string (Optional)
  service_access_role = string (Optional)
  ssl_mode = string (Optional, Computed)
  tags = ['map', 'string'] (Optional)
  tags_all = ['map', 'string'] (Optional, Computed)
  username = string (Optional)

  elasticsearch_settings block "list" (Optional) {
    endpoint_uri = string (Required)
    service_access_role_arn = string (Required)
    error_retry_duration = number (Optional)
    full_load_error_percentage = number (Optional)
    use_new_mapping_type = bool (Optional)
  }

  kafka_settings block "list" (Optional) {
    broker = string (Required)
    include_control_details = bool (Optional)
    include_null_and_empty = bool (Optional)
    include_partition_value = bool (Optional)
    include_table_alter_operations = bool (Optional)
    include_transaction_details = bool (Optional)
    message_format = string (Optional)
    message_max_bytes = number (Optional)
    no_hex_prefix = bool (Optional)
    partition_include_schema_table = bool (Optional)
    sasl_mechanism = string (Optional)
    sasl_password = string (Optional)
    sasl_username = string (Optional)
    security_protocol = string (Optional)
    ssl_ca_certificate_arn = string (Optional)
    ssl_client_certificate_arn = string (Optional)
    ssl_client_key_arn = string (Optional)
    ssl_client_key_password = string (Optional)
    topic = string (Optional)
  }

  kinesis_settings block "list" (Optional) {
    include_control_details = bool (Optional)
    include_null_and_empty = bool (Optional)
    include_partition_value = bool (Optional)
    include_table_alter_operations = bool (Optional)
    include_transaction_details = bool (Optional)
    message_format = string (Optional)
    partition_include_schema_table = bool (Optional)
    service_access_role_arn = string (Optional)
    stream_arn = string (Optional)
    use_large_integer_value = bool (Optional)
  }

  mongodb_settings block "list" (Optional) {
    auth_mechanism = string (Optional)
    auth_source = string (Optional)
    auth_type = string (Optional)
    docs_to_investigate = string (Optional)
    extract_doc_id = string (Optional)
    nesting_level = string (Optional)
  }

  mysql_settings block "list" (Optional) {
    after_connect_script = string (Optional, Computed)
    authentication_method = string (Optional, Computed)
    clean_source_metadata_on_mismatch = bool (Optional, Computed)
    events_poll_interval = number (Optional, Computed)
    execute_timeout = number (Optional, Computed)
    max_file_size = number (Optional, Computed)
    parallel_load_threads = number (Optional, Computed)
    server_timezone = string (Optional, Computed)
    service_access_role_arn = string (Optional, Computed)
    target_db_type = string (Optional, Computed)
  }

  oracle_settings block "list" (Optional) {
    authentication_method = string (Optional, Computed)
  }

  postgres_settings block "list" (Optional) {
    after_connect_script = string (Optional)
    authentication_method = string (Optional, Computed)
    babelfish_database_name = string (Optional)
    capture_ddls = bool (Optional)
    database_mode = string (Optional)
    ddl_artifacts_schema = string (Optional)
    execute_timeout = number (Optional)
    fail_tasks_on_lob_truncation = bool (Optional)
    heartbeat_enable = bool (Optional)
    heartbeat_frequency = number (Optional)
    heartbeat_schema = string (Optional)
    map_boolean_as_boolean = bool (Optional)
    map_jsonb_as_clob = bool (Optional)
    map_long_varchar_as = string (Optional)
    max_file_size = number (Optional)
    plugin_name = string (Optional)
    service_access_role_arn = string (Optional)
    slot_name = string (Optional)
  }

  redis_settings block "list" (Optional) {
    auth_type = string (Required)
    port = number (Required)
    server_name = string (Required)
    auth_password = string (Optional)
    auth_user_name = string (Optional)
    ssl_ca_certificate_arn = string (Optional)
    ssl_security_protocol = string (Optional)
  }

  redshift_settings block "list" (Optional) {
    bucket_folder = string (Optional)
    bucket_name = string (Optional)
    encryption_mode = string (Optional)
    server_side_encryption_kms_key_id = string (Optional)
    service_access_role_arn = string (Optional)
  }

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
  }
}
