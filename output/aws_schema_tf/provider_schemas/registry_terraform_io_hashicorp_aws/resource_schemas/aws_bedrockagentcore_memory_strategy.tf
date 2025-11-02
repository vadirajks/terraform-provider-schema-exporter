resource "aws_bedrockagentcore_memory_strategy" "name" {
  memory_id = string (Required)
  name = string (Required)
  namespaces = ['set', 'string'] (Required)
  type = string (Required)
  description = string (Optional)
  memory_execution_role_arn = string (Optional)
  memory_strategy_id = string (Computed)
  region = string (Optional, Computed)

  configuration block "list" (Optional) {
    type = string (Required)

    consolidation block "list" (Optional) {
      append_to_prompt = string (Required)
      model_id = string (Required)
    }

    extraction block "list" (Optional) {
      append_to_prompt = string (Required)
      model_id = string (Required)
    }
  }

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    update = string (Optional)
  }
}
