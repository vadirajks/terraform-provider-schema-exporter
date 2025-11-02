resource "aws_dynamodb_table" "name" {
  name = string (Required)
  arn = string (Computed)
  billing_mode = string (Optional)
  deletion_protection_enabled = bool (Optional)
  hash_key = string (Optional, Computed)
  id = string (Optional, Computed)
  range_key = string (Optional)
  read_capacity = number (Optional, Computed)
  region = string (Optional, Computed)
  restore_date_time = string (Optional)
  restore_source_name = string (Optional)
  restore_source_table_arn = string (Optional)
  restore_to_latest_time = bool (Optional)
  stream_arn = string (Computed)
  stream_enabled = bool (Optional)
  stream_label = string (Computed)
  stream_view_type = string (Optional, Computed)
  table_class = string (Optional)
  tags = ['map', 'string'] (Optional)
  tags_all = ['map', 'string'] (Optional, Computed)
  write_capacity = number (Optional, Computed)

  attribute block "set" (Optional) {
    name = string (Required)
    type = string (Required)
  }

  global_secondary_index block "set" (Optional) {
    hash_key = string (Required)
    name = string (Required)
    projection_type = string (Required)
    non_key_attributes = ['set', 'string'] (Optional)
    range_key = string (Optional)
    read_capacity = number (Optional, Computed)
    write_capacity = number (Optional, Computed)

    on_demand_throughput block "list" (Optional) {
      max_read_request_units = number (Optional, Computed)
      max_write_request_units = number (Optional, Computed)
    }

    warm_throughput block "list" (Optional) {
      read_units_per_second = number (Optional, Computed)
      write_units_per_second = number (Optional, Computed)
    }
  }

  import_table block "list" (Optional) {
    input_format = string (Required)
    input_compression_type = string (Optional)

    input_format_options block "list" (Optional) {

      csv block "list" (Optional) {
        delimiter = string (Optional)
        header_list = ['set', 'string'] (Optional)
      }
    }

    s3_bucket_source block "list" (Required) {
      bucket = string (Required)
      bucket_owner = string (Optional)
      key_prefix = string (Optional)
    }
  }

  local_secondary_index block "set" (Optional) {
    name = string (Required)
    projection_type = string (Required)
    range_key = string (Required)
    non_key_attributes = ['list', 'string'] (Optional)
  }

  on_demand_throughput block "list" (Optional) {
    max_read_request_units = number (Optional, Computed)
    max_write_request_units = number (Optional, Computed)
  }

  point_in_time_recovery block "list" (Optional) {
    enabled = bool (Required)
    recovery_period_in_days = number (Optional, Computed)
  }

  replica block "set" (Optional) {
    region_name = string (Required)
    arn = string (Computed)
    consistency_mode = string (Optional)
    deletion_protection_enabled = bool (Optional, Computed)
    kms_key_arn = string (Optional, Computed)
    point_in_time_recovery = bool (Optional)
    propagate_tags = bool (Optional)
    stream_arn = string (Computed)
    stream_label = string (Computed)
  }

  server_side_encryption block "list" (Optional) {
    enabled = bool (Required)
    kms_key_arn = string (Optional, Computed)
  }

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    update = string (Optional)
  }

  ttl block "list" (Optional) {
    attribute_name = string (Optional)
    enabled = bool (Optional)
  }

  warm_throughput block "list" (Optional) {
    read_units_per_second = number (Optional, Computed)
    write_units_per_second = number (Optional, Computed)
  }
}
