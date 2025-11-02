resource "aws_bedrockagentcore_gateway" "name" {
  authorizer_type = string (Required)
  name = string (Required)
  protocol_type = string (Required)
  role_arn = string (Required)
  description = string (Optional)
  exception_level = string (Optional)
  gateway_arn = string (Computed)
  gateway_id = string (Computed)
  gateway_url = string (Computed)
  kms_key_arn = string (Optional)
  region = string (Optional, Computed)
  tags = ['map', 'string'] (Optional)
  tags_all = ['map', 'string'] (Computed)
  workload_identity_details = ['list', ['object', {'workload_identity_arn': 'string'}]] (Computed)

  authorizer_configuration block "list" (Optional) {

    custom_jwt_authorizer block "list" (Optional) {
      discovery_url = string (Required)
      allowed_audience = ['set', 'string'] (Optional)
      allowed_clients = ['set', 'string'] (Optional)
    }
  }

  protocol_configuration block "list" (Optional) {

    mcp block "list" (Optional) {
      instructions = string (Optional)
      search_type = string (Optional)
      supported_versions = ['set', 'string'] (Optional)
    }
  }

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    update = string (Optional)
  }
}
