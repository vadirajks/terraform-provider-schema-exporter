resource "aws_keyspaces_table" "name" {
  keyspace_name = string (Required)
  table_name = string (Required)
  arn = string (Computed)
  default_time_to_live = number (Optional)
  id = string (Optional, Computed)
  region = string (Optional, Computed)
  tags = ['map', 'string'] (Optional)
  tags_all = ['map', 'string'] (Optional, Computed)

  capacity_specification block "list" (Optional) {
    read_capacity_units = number (Optional)
    throughput_mode = string (Optional, Computed)
    write_capacity_units = number (Optional)
  }

  client_side_timestamps block "list" (Optional) {
    status = string (Required)
  }

  comment block "list" (Optional) {
    message = string (Optional, Computed)
  }

  encryption_specification block "list" (Optional) {
    kms_key_identifier = string (Optional)
    type = string (Optional, Computed)
  }

  point_in_time_recovery block "list" (Optional) {
    status = string (Optional, Computed)
  }

  schema_definition block "list" (Required) {

    clustering_key block "list" (Optional) {
      name = string (Required)
      order_by = string (Required)
    }

    column block "set" (Required) {
      name = string (Required)
      type = string (Required)
    }

    partition_key block "list" (Required) {
      name = string (Required)
    }

    static_column block "set" (Optional) {
      name = string (Required)
    }
  }

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    update = string (Optional)
  }

  ttl block "list" (Optional) {
    status = string (Required)
  }
}
