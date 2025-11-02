resource "aws_macie2_classification_export_configuration" "name" {
  id = string (Optional, Computed)
  region = string (Optional, Computed)

  s3_destination block "list" (Required) {
    bucket_name = string (Required)
    kms_key_arn = string (Required)
    key_prefix = string (Optional)
  }
}
