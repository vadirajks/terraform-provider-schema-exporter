data "aws_timestreamwrite_table" "name" {
  database_name = string (Required)
  name = string (Required)
  arn = string (Computed)
  creation_time = string (Computed)
  last_updated_time = string (Computed)
  magnetic_store_write_properties = ['list', ['object', {'enable_magnetic_store_writes': 'bool', 'magnetic_store_rejected_data_location': ['list', ['object', {'s3_configuration': ['list', ['object', {'bucket_name': 'string', 'encryption_option': 'string', 'kms_key_id': 'string', 'object_key_prefix': 'string'}]]}]]}]] (Computed)
  region = string (Optional, Computed)
  retention_properties = ['list', ['object', {'magnetic_store_retention_period_in_days': 'number', 'memory_store_retention_period_in_hours': 'number'}]] (Computed)
  schema = ['list', ['object', {'composite_partition_key': ['list', ['object', {'enforcement_in_record': 'string', 'name': 'string', 'type': 'string'}]]}]] (Computed)
  table_status = string (Computed)
}
