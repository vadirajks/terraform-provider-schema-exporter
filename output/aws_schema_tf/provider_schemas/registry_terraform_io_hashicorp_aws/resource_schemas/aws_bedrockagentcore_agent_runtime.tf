resource "aws_bedrockagentcore_agent_runtime" "name" {
  agent_runtime_name = string (Required)
  role_arn = string (Required)
  agent_runtime_arn = string (Computed)
  agent_runtime_id = string (Computed)
  agent_runtime_version = string (Computed)
  description = string (Optional)
  environment_variables = ['map', 'string'] (Optional)
  lifecycle_configuration = ['list', ['object', {'idle_runtime_session_timeout': 'number', 'max_lifetime': 'number'}]] (Optional, Computed)
  region = string (Optional, Computed)
  tags = ['map', 'string'] (Optional)
  tags_all = ['map', 'string'] (Computed)
  workload_identity_details = ['list', ['object', {'workload_identity_arn': 'string'}]] (Computed)

  agent_runtime_artifact block "list" (Optional) {

    container_configuration block "list" (Optional) {
      container_uri = string (Required)
    }
  }

  authorizer_configuration block "list" (Optional) {

    custom_jwt_authorizer block "list" (Optional) {
      discovery_url = string (Required)
      allowed_audience = ['set', 'string'] (Optional)
      allowed_clients = ['set', 'string'] (Optional)
    }
  }

  network_configuration block "list" (Optional) {
    network_mode = string (Required)

    network_mode_config block "list" (Optional) {
      security_groups = ['set', 'string'] (Required)
      subnets = ['set', 'string'] (Required)
    }
  }

  protocol_configuration block "list" (Optional) {
    server_protocol = string (Optional)
  }

  request_header_configuration block "list" (Optional) {
    request_header_allowlist = ['set', 'string'] (Optional)
  }

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    update = string (Optional)
  }
}
