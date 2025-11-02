resource "aws_redshift_endpoint_authorization" "name" {
  account = string (Required)
  cluster_identifier = string (Required)
  allowed_all_vpcs = bool (Computed)
  endpoint_count = number (Computed)
  force_delete = bool (Optional)
  grantee = string (Computed)
  grantor = string (Computed)
  id = string (Optional, Computed)
  region = string (Optional, Computed)
  vpc_ids = ['set', 'string'] (Optional)
}
