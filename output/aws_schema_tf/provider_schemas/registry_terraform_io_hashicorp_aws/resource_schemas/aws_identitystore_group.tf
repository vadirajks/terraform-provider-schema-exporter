resource "aws_identitystore_group" "name" {
  display_name = string (Required)
  identity_store_id = string (Required)
  arn = string (Computed)
  description = string (Optional)
  external_ids = ['list', ['object', {'id': 'string', 'issuer': 'string'}]] (Computed)
  group_id = string (Computed)
  id = string (Optional, Computed)
  region = string (Optional, Computed)
}
