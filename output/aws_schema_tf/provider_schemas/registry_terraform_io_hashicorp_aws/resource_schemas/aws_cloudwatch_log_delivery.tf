resource "aws_cloudwatch_log_delivery" "name" {
  delivery_destination_arn = string (Required)
  delivery_source_name = string (Required)
  arn = string (Computed)
  field_delimiter = string (Optional, Computed)
  id = string (Computed)
  record_fields = ['list', 'string'] (Optional, Computed)
  region = string (Optional, Computed)
  s3_delivery_configuration = ['list', ['object', {'enable_hive_compatible_path': 'bool', 'suffix_path': 'string'}]] (Optional, Computed)
  tags = ['map', 'string'] (Optional)
  tags_all = ['map', 'string'] (Computed)
}
