resource "aws_athena_database" "name" {
  name = string (Required)
  bucket = string (Optional)
  comment = string (Optional)
  expected_bucket_owner = string (Optional)
  force_destroy = bool (Optional)
  id = string (Optional, Computed)
  properties = ['map', 'string'] (Optional)
  region = string (Optional, Computed)
  workgroup = string (Optional)

  acl_configuration block "list" (Optional) {
    s3_acl_option = string (Required)
  }

  encryption_configuration block "list" (Optional) {
    encryption_option = string (Required)
    kms_key = string (Optional)
  }
}
