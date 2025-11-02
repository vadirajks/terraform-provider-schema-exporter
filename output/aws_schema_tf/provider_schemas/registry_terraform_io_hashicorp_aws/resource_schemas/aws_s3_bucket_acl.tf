resource "aws_s3_bucket_acl" "name" {
  bucket = string (Required)
  acl = string (Optional)
  expected_bucket_owner = string (Optional)
  id = string (Optional, Computed)
  region = string (Optional, Computed)

  access_control_policy block "list" (Optional) {

    grant block "set" (Optional) {
      permission = string (Required)

      grantee block "list" (Optional) {
        type = string (Required)
        display_name = string (Computed)
        email_address = string (Optional)
        id = string (Optional)
        uri = string (Optional)
      }
    }

    owner block "list" (Required) {
      id = string (Required)
      display_name = string (Optional, Computed)
    }
  }
}
