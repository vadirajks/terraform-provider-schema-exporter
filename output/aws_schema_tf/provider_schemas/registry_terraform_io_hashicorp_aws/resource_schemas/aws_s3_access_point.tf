resource "aws_s3_access_point" "name" {
  bucket = string (Required)
  name = string (Required)
  account_id = string (Optional, Computed)
  alias = string (Computed)
  arn = string (Computed)
  bucket_account_id = string (Optional, Computed)
  domain_name = string (Computed)
  endpoints = ['map', 'string'] (Computed)
  has_public_access_policy = bool (Computed)
  id = string (Optional, Computed)
  network_origin = string (Computed)
  policy = string (Optional, Computed)
  region = string (Optional, Computed)
  tags = ['map', 'string'] (Optional)
  tags_all = ['map', 'string'] (Optional, Computed)

  public_access_block_configuration block "list" (Optional) {
    block_public_acls = bool (Optional)
    block_public_policy = bool (Optional)
    ignore_public_acls = bool (Optional)
    restrict_public_buckets = bool (Optional)
  }

  vpc_configuration block "list" (Optional) {
    vpc_id = string (Required)
  }
}
