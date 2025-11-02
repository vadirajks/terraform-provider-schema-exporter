resource "aws_codebuild_report_group" "name" {
  name = string (Required)
  type = string (Required)
  arn = string (Computed)
  created = string (Computed)
  delete_reports = bool (Optional)
  id = string (Optional, Computed)
  region = string (Optional, Computed)
  tags = ['map', 'string'] (Optional)
  tags_all = ['map', 'string'] (Optional, Computed)

  export_config block "list" (Required) {
    type = string (Required)

    s3_destination block "list" (Optional) {
      bucket = string (Required)
      encryption_key = string (Required)
      encryption_disabled = bool (Optional)
      packaging = string (Optional)
      path = string (Optional)
    }
  }
}
