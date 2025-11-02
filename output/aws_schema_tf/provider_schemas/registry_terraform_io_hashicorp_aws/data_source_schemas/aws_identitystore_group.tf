data "aws_identitystore_group" "name" {
  identity_store_id = string (Required)
  description = string (Computed)
  display_name = string (Computed)
  external_ids = ['list', ['object', {'id': 'string', 'issuer': 'string'}]] (Computed)
  group_id = string (Optional, Computed)
  id = string (Optional, Computed)
  region = string (Optional, Computed)

  alternate_identifier block "list" (Optional) {

    external_id block "list" (Optional) {
      id = string (Required)
      issuer = string (Required)
    }

    unique_attribute block "list" (Optional) {
      attribute_path = string (Required)
      attribute_value = string (Required)
    }
  }
}
