resource "aws_s3control_multi_region_access_point" "name" {
  account_id = string (Optional, Computed)
  alias = string (Computed)
  arn = string (Computed)
  domain_name = string (Computed)
  id = string (Optional, Computed)
  region = string (Optional, Computed)
  status = string (Computed)

  details block "list" (Required) {
    name = string (Required)

    public_access_block block "list" (Optional) {
      block_public_acls = bool (Optional)
      block_public_policy = bool (Optional)
      ignore_public_acls = bool (Optional)
      restrict_public_buckets = bool (Optional)
    }

    region block "set" (Required) {
      bucket = string (Required)
      bucket_account_id = string (Optional, Computed)
      region = string (Computed)
    }
  }

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
  }
}
