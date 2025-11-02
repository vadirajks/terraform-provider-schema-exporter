resource "aws_bedrockagent_agent" "name" {
  agent_name = string (Required)
  agent_resource_role_arn = string (Required)
  foundation_model = string (Required)
  agent_arn = string (Computed)
  agent_collaboration = string (Optional, Computed)
  agent_id = string (Computed)
  agent_version = string (Computed)
  customer_encryption_key_arn = string (Optional)
  description = string (Optional)
  guardrail_configuration = ['list', ['object', {'guardrail_identifier': 'string', 'guardrail_version': 'string'}]] (Optional)
  id = string (Computed)
  idle_session_ttl_in_seconds = number (Optional, Computed)
  instruction = string (Optional, Computed)
  memory_configuration = ['list', ['object', {'enabled_memory_types': ['list', 'string'], 'storage_days': 'number'}]] (Optional, Computed)
  prepare_agent = bool (Optional, Computed)
  prepared_at = string (Computed)
  prompt_override_configuration = ['list', ['object', {'override_lambda': 'string', 'prompt_configurations': ['set', ['object', {'base_prompt_template': 'string', 'inference_configuration': ['list', ['object', {'max_length': 'number', 'stop_sequences': ['list', 'string'], 'temperature': 'number', 'top_k': 'number', 'top_p': 'number'}]], 'parser_mode': 'string', 'prompt_creation_mode': 'string', 'prompt_state': 'string', 'prompt_type': 'string'}]]}]] (Optional, Computed)
  region = string (Optional, Computed)
  skip_resource_in_use_check = bool (Optional, Computed)
  tags = ['map', 'string'] (Optional)
  tags_all = ['map', 'string'] (Computed)

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    update = string (Optional)
  }
}
