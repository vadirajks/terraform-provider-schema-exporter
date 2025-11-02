resource "aws_bedrockagentcore_browser" "name" {
  name = string (Required)
  browser_arn = string (Computed)
  browser_id = string (Computed)
  description = string (Optional)
  execution_role_arn = string (Optional)
  region = string (Optional, Computed)
  tags = ['map', 'string'] (Optional)
  tags_all = ['map', 'string'] (Computed)

  network_configuration block "list" (Optional) {
    network_mode = string (Required)

    network_mode_config block "list" (Optional) {
      security_groups = ['set', 'string'] (Required)
      subnets = ['set', 'string'] (Required)
    }
  }

  recording block "list" (Optional) {
    enabled = bool (Optional)

    s3_location block "list" (Optional) {
      bucket = string (Required)
      prefix = string (Required)
    }
  }

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
  }
}
