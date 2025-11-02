data "aws_s3control_multi_region_access_point" "name" {
  name = string (Required)
  account_id = string (Optional, Computed)
  alias = string (Computed)
  arn = string (Computed)
  created_at = string (Computed)
  domain_name = string (Computed)
  id = string (Optional, Computed)
  public_access_block = ['list', ['object', {'block_public_acls': 'bool', 'block_public_policy': 'bool', 'ignore_public_acls': 'bool', 'restrict_public_buckets': 'bool'}]] (Computed)
  region = string (Optional, Computed)
  regions = ['list', ['object', {'bucket': 'string', 'bucket_account_id': 'string', 'region': 'string'}]] (Computed)
  status = string (Computed)
}
