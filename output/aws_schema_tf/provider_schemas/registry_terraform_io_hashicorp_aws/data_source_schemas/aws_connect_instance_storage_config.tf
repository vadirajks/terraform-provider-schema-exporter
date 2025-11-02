data "aws_connect_instance_storage_config" "name" {
  association_id = string (Required)
  instance_id = string (Required)
  resource_type = string (Required)
  id = string (Optional, Computed)
  region = string (Optional, Computed)
  storage_config = ['list', ['object', {'kinesis_firehose_config': ['list', ['object', {'firehose_arn': 'string'}]], 'kinesis_stream_config': ['list', ['object', {'stream_arn': 'string'}]], 'kinesis_video_stream_config': ['list', ['object', {'encryption_config': ['list', ['object', {'encryption_type': 'string', 'key_id': 'string'}]], 'prefix': 'string', 'retention_period_hours': 'number'}]], 's3_config': ['list', ['object', {'bucket_name': 'string', 'bucket_prefix': 'string', 'encryption_config': ['list', ['object', {'encryption_type': 'string', 'key_id': 'string'}]]}]], 'storage_type': 'string'}]] (Computed)
}
