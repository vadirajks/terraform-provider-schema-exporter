resource "aws_bcmdataexports_export" "name" {
  arn = string (Computed)
  id = string (Computed)
  tags = ['map', 'string'] (Optional)
  tags_all = ['map', 'string'] (Computed)

  export block "list" (Optional) {
    name = string (Required)
    description = string (Optional)
    export_arn = string (Computed)

    data_query block "list" (Optional) {
      query_statement = string (Required)
      table_configurations = ['map', ['map', 'string']] (Optional)
    }

    destination_configurations block "list" (Optional) {

      s3_destination block "list" (Optional) {
        s3_bucket = string (Required)
        s3_prefix = string (Required)
        s3_region = string (Required)

        s3_output_configurations block "list" (Optional) {
          compression = string (Required)
          format = string (Required)
          output_type = string (Required)
          overwrite = string (Required)
        }
      }
    }

    refresh_cadence block "list" (Optional) {
      frequency = string (Required)
    }
  }

  timeouts block "single" (Optional) {
    create = string (Optional)
    update = string (Optional)
  }
}
