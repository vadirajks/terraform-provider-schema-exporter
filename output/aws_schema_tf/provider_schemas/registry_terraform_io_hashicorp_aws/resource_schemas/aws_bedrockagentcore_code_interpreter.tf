resource "aws_bedrockagentcore_code_interpreter" "name" {
  name = string (Required)
  code_interpreter_arn = string (Computed)
  code_interpreter_id = string (Computed)
  description = string (Optional)
  execution_role_arn = string (Optional)
  region = string (Optional, Computed)
  tags = ['map', 'string'] (Optional)
  tags_all = ['map', 'string'] (Computed)

  network_configuration block "list" (Optional) {
    network_mode = string (Required)

    vpc_config block "list" (Optional) {
      security_groups = ['set', 'string'] (Required)
      subnets = ['set', 'string'] (Required)
    }
  }

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
  }
}
