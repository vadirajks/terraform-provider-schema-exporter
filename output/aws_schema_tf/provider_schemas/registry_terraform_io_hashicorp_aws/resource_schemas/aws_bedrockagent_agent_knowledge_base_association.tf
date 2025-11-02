resource "aws_bedrockagent_agent_knowledge_base_association" "name" {
  agent_id = string (Required)
  description = string (Required)
  knowledge_base_id = string (Required)
  knowledge_base_state = string (Required)
  agent_version = string (Optional, Computed)
  id = string (Computed)
  region = string (Optional, Computed)

  timeouts block "single" (Optional) {
    create = string (Optional)
    update = string (Optional)
  }
}
