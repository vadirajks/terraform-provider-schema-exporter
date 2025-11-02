resource "aws_qldb_stream" "name" {
  inclusive_start_time = string (Required)
  ledger_name = string (Required)
  role_arn = string (Required)
  stream_name = string (Required)
  arn = string (Computed)
  exclusive_end_time = string (Optional)
  id = string (Optional, Computed)
  region = string (Optional, Computed)
  tags = ['map', 'string'] (Optional)
  tags_all = ['map', 'string'] (Optional, Computed)

  kinesis_configuration block "list" (Required) {
    stream_arn = string (Required)
    aggregation_enabled = bool (Optional)
  }

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
  }
}
