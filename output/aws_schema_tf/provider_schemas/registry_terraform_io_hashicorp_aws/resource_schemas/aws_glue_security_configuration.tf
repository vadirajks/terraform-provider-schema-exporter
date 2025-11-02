resource "aws_glue_security_configuration" "name" {
  name = string (Required)
  id = string (Optional, Computed)
  region = string (Optional, Computed)

  encryption_configuration block "list" (Required) {

    cloudwatch_encryption block "list" (Required) {
      cloudwatch_encryption_mode = string (Optional)
      kms_key_arn = string (Optional)
    }

    job_bookmarks_encryption block "list" (Required) {
      job_bookmarks_encryption_mode = string (Optional)
      kms_key_arn = string (Optional)
    }

    s3_encryption block "list" (Required) {
      kms_key_arn = string (Optional)
      s3_encryption_mode = string (Optional)
    }
  }
}
