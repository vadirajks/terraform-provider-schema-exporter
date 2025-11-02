resource "aws_s3_bucket_logging" "name" {
  bucket = string (Required)
  target_bucket = string (Required)
  target_prefix = string (Required)
  expected_bucket_owner = string (Optional)
  id = string (Optional, Computed)
  region = string (Optional, Computed)

  target_grant block "set" (Optional) {
    permission = string (Required)

    grantee block "list" (Required) {
      type = string (Required)
      display_name = string (Computed)
      email_address = string (Optional)
      id = string (Optional)
      uri = string (Optional)
    }
  }

  target_object_key_format block "list" (Optional) {

    partitioned_prefix block "list" (Optional) {
      partition_date_source = string (Required)
    }

    simple_prefix block "list" (Optional) {
    }
  }
}
