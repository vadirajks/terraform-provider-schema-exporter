data "aws_bedrockagent_agent_versions" "name" {
  agent_id = string (Required)
  region = string (Optional, Computed)

  agent_version_summaries block "list" (Optional) {
    agent_name = string (Computed)
    agent_status = string (Computed)
    agent_version = string (Computed)
    created_at = string (Computed)
    description = string (Computed)
    updated_at = string (Computed)

    guardrail_configuration block "list" (Optional) {
      guardrail_identifier = string (Computed)
      guardrail_version = string (Computed)
    }
  }
}
