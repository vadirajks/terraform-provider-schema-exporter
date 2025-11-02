resource "aws_bedrockagentcore_agent_runtime_endpoint" "name" {
  agent_runtime_id = string (Required)
  name = string (Required)
  agent_runtime_arn = string (Computed)
  agent_runtime_endpoint_arn = string (Computed)
  agent_runtime_version = string (Optional, Computed)
  description = string (Optional)
  region = string (Optional, Computed)
  tags = ['map', 'string'] (Optional)
  tags_all = ['map', 'string'] (Computed)

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    update = string (Optional)
  }
}
