resource "aws_verifiedpermissions_policy" "name" {
  policy_store_id = string (Required)
  created_date = string (Computed)
  id = string (Computed)
  policy_id = string (Computed)
  region = string (Optional, Computed)

  definition block "list" (Optional) {

    static block "list" (Optional) {
      statement = string (Required)
      description = string (Optional)
    }

    template_linked block "list" (Optional) {
      policy_template_id = string (Required)

      principal block "list" (Optional) {
        entity_id = string (Required)
        entity_type = string (Required)
      }

      resource block "list" (Optional) {
        entity_id = string (Required)
        entity_type = string (Required)
      }
    }
  }
}
