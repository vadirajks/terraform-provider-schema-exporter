resource "aws_s3_bucket_versioning" "name" {
  bucket = string (Required)
  expected_bucket_owner = string (Optional)
  id = string (Optional, Computed)
  mfa = string (Optional)
  region = string (Optional, Computed)

  versioning_configuration block "list" (Required) {
    status = string (Required)
    mfa_delete = string (Optional, Computed)
  }
}
