resource "aws_bedrockagent_agent_collaborator" "name" {
  agent_id = string (Required)
  collaboration_instruction = string (Required)
  collaborator_name = string (Required)
  agent_version = string (Optional, Computed)
  collaborator_id = string (Computed)
  id = string (Computed)
  prepare_agent = bool (Optional, Computed)
  region = string (Optional, Computed)
  relay_conversation_history = string (Optional, Computed)

  agent_descriptor block "list" (Optional) {
    alias_arn = string (Required)
  }

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    update = string (Optional)
  }
}
