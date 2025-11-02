resource "aws_verifiedaccess_group" "name" {
  verifiedaccess_instance_id = string (Required)
  creation_time = string (Computed)
  deletion_time = string (Computed)
  description = string (Optional, Computed)
  id = string (Optional, Computed)
  last_updated_time = string (Computed)
  owner = string (Computed)
  policy_document = string (Optional)
  region = string (Optional, Computed)
  tags = ['map', 'string'] (Optional)
  tags_all = ['map', 'string'] (Optional, Computed)
  verifiedaccess_group_arn = string (Computed)
  verifiedaccess_group_id = string (Computed)

  sse_configuration block "list" (Optional) {
    customer_managed_key_enabled = bool (Optional)
    kms_key_arn = string (Optional)
  }
}
