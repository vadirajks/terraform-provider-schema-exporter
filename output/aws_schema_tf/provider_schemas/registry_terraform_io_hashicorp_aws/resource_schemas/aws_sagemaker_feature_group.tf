resource "aws_sagemaker_feature_group" "name" {
  event_time_feature_name = string (Required)
  feature_group_name = string (Required)
  record_identifier_feature_name = string (Required)
  role_arn = string (Required)
  arn = string (Computed)
  description = string (Optional)
  id = string (Optional, Computed)
  region = string (Optional, Computed)
  tags = ['map', 'string'] (Optional)
  tags_all = ['map', 'string'] (Optional, Computed)

  feature_definition block "list" (Required) {
    collection_type = string (Optional)
    feature_name = string (Optional)
    feature_type = string (Optional)

    collection_config block "list" (Optional) {

      vector_config block "list" (Optional) {
        dimension = number (Optional)
      }
    }
  }

  offline_store_config block "list" (Optional) {
    disable_glue_table_creation = bool (Optional)
    table_format = string (Optional)

    data_catalog_config block "list" (Optional) {
      catalog = string (Optional, Computed)
      database = string (Optional, Computed)
      table_name = string (Optional, Computed)
    }

    s3_storage_config block "list" (Required) {
      s3_uri = string (Required)
      kms_key_id = string (Optional)
      resolved_output_s3_uri = string (Optional, Computed)
    }
  }

  online_store_config block "list" (Optional) {
    enable_online_store = bool (Optional)
    storage_type = string (Optional)

    security_config block "list" (Optional) {
      kms_key_id = string (Optional)
    }

    ttl_duration block "list" (Optional) {
      unit = string (Optional)
      value = number (Optional)
    }
  }

  throughput_config block "list" (Optional) {
    provisioned_read_capacity_units = number (Optional)
    provisioned_write_capacity_units = number (Optional)
    throughput_mode = string (Optional, Computed)
  }
}
