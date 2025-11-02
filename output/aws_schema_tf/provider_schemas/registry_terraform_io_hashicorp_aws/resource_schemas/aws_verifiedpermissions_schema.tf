resource "aws_verifiedpermissions_schema" "name" {
  policy_store_id = string (Required)
  id = string (Computed)
  namespaces = ['set', 'string'] (Computed)
  region = string (Optional, Computed)

  definition block "list" (Optional) {
    value = string (Required)
  }
}
