resource "aws_verifiedpermissions_identity_source" "name" {
  policy_store_id = string (Required)
  id = string (Computed)
  principal_entity_type = string (Optional, Computed)
  region = string (Optional, Computed)

  configuration block "list" (Optional) {

    cognito_user_pool_configuration block "list" (Optional) {
      user_pool_arn = string (Required)
      client_ids = ['list', 'string'] (Optional, Computed)

      group_configuration block "list" (Optional) {
        group_entity_type = string (Required)
      }
    }

    open_id_connect_configuration block "list" (Optional) {
      issuer = string (Required)
      entity_id_prefix = string (Optional)

      group_configuration block "list" (Optional) {
        group_claim = string (Required)
        group_entity_type = string (Required)
      }

      token_selection block "list" (Optional) {

        access_token_only block "list" (Optional) {
          audiences = ['list', 'string'] (Optional)
          principal_id_claim = string (Optional)
        }

        identity_token_only block "list" (Optional) {
          client_ids = ['list', 'string'] (Optional)
          principal_id_claim = string (Optional)
        }
      }
    }
  }
}
