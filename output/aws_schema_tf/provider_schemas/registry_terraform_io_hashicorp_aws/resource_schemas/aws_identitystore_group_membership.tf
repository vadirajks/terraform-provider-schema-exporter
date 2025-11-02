resource "aws_identitystore_group_membership" "name" {
  group_id = string (Required)
  identity_store_id = string (Required)
  member_id = string (Required)
  id = string (Optional, Computed)
  membership_id = string (Computed)
  region = string (Optional, Computed)
}
