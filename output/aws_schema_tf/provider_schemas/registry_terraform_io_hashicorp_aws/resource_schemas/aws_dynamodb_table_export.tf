resource "aws_dynamodb_table_export" "name" {
  s3_bucket = string (Required)
  table_arn = string (Required)
  arn = string (Computed)
  billed_size_in_bytes = number (Computed)
  end_time = string (Computed)
  export_format = string (Optional)
  export_status = string (Computed)
  export_time = string (Optional, Computed)
  export_type = string (Optional, Computed)
  id = string (Optional, Computed)
  item_count = number (Computed)
  manifest_files_s3_key = string (Computed)
  region = string (Optional, Computed)
  s3_bucket_owner = string (Optional, Computed)
  s3_prefix = string (Optional, Computed)
  s3_sse_algorithm = string (Optional, Computed)
  s3_sse_kms_key_id = string (Optional)
  start_time = string (Computed)

  incremental_export_specification block "list" (Optional) {
    export_from_time = string (Optional, Computed)
    export_to_time = string (Optional, Computed)
    export_view_type = string (Optional, Computed)
  }

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
  }
}
