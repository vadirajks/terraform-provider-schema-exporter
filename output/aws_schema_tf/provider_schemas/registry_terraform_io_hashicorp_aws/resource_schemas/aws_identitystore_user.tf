resource "aws_identitystore_user" "name" {
  display_name = string (Required)
  identity_store_id = string (Required)
  user_name = string (Required)
  external_ids = ['list', ['object', {'id': 'string', 'issuer': 'string'}]] (Computed)
  id = string (Optional, Computed)
  locale = string (Optional)
  nickname = string (Optional)
  preferred_language = string (Optional)
  profile_url = string (Optional)
  region = string (Optional, Computed)
  timezone = string (Optional)
  title = string (Optional)
  user_id = string (Computed)
  user_type = string (Optional)

  addresses block "list" (Optional) {
    country = string (Optional)
    formatted = string (Optional)
    locality = string (Optional)
    postal_code = string (Optional)
    primary = bool (Optional)
    region = string (Optional)
    street_address = string (Optional)
    type = string (Optional)
  }

  emails block "list" (Optional) {
    primary = bool (Optional)
    type = string (Optional)
    value = string (Optional)
  }

  name block "list" (Required) {
    family_name = string (Required)
    given_name = string (Required)
    formatted = string (Optional)
    honorific_prefix = string (Optional)
    honorific_suffix = string (Optional)
    middle_name = string (Optional)
  }

  phone_numbers block "list" (Optional) {
    primary = bool (Optional)
    type = string (Optional)
    value = string (Optional)
  }
}
