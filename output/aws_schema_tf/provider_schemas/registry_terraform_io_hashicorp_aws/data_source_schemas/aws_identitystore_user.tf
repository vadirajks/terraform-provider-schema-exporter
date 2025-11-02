data "aws_identitystore_user" "name" {
  identity_store_id = string (Required)
  addresses = ['list', ['object', {'country': 'string', 'formatted': 'string', 'locality': 'string', 'postal_code': 'string', 'primary': 'bool', 'region': 'string', 'street_address': 'string', 'type': 'string'}]] (Computed)
  display_name = string (Computed)
  emails = ['list', ['object', {'primary': 'bool', 'type': 'string', 'value': 'string'}]] (Computed)
  external_ids = ['list', ['object', {'id': 'string', 'issuer': 'string'}]] (Computed)
  id = string (Optional, Computed)
  locale = string (Computed)
  name = ['list', ['object', {'family_name': 'string', 'formatted': 'string', 'given_name': 'string', 'honorific_prefix': 'string', 'honorific_suffix': 'string', 'middle_name': 'string'}]] (Computed)
  nickname = string (Computed)
  phone_numbers = ['list', ['object', {'primary': 'bool', 'type': 'string', 'value': 'string'}]] (Computed)
  preferred_language = string (Computed)
  profile_url = string (Computed)
  region = string (Optional, Computed)
  timezone = string (Computed)
  title = string (Computed)
  user_id = string (Optional, Computed)
  user_name = string (Computed)
  user_type = string (Computed)

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
