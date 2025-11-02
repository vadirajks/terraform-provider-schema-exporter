resource "aws_bedrockagent_agent_alias" "name" {
  agent_alias_name = string (Required)
  agent_id = string (Required)
  agent_alias_arn = string (Computed)
  agent_alias_id = string (Computed)
  description = string (Optional)
  id = string (Computed)
  region = string (Optional, Computed)
  routing_configuration = ['list', ['object', {'agent_version': 'string', 'provisioned_throughput': 'string'}]] (Optional, Computed)
  tags = ['map', 'string'] (Optional)
  tags_all = ['map', 'string'] (Computed)

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    update = string (Optional)
  }
}
