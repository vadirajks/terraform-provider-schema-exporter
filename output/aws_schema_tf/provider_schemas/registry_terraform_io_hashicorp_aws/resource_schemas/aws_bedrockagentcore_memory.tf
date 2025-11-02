resource "aws_bedrockagentcore_memory" "name" {
  event_expiry_duration = number (Required)
  name = string (Required)
  arn = string (Computed)
  description = string (Optional)
  encryption_key_arn = string (Optional)
  id = string (Computed)
  memory_execution_role_arn = string (Optional)
  region = string (Optional, Computed)
  tags = ['map', 'string'] (Optional)
  tags_all = ['map', 'string'] (Computed)

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
  }
}
