resource "aws_iot_provisioning_template" "name" {
  name = string (Required)
  provisioning_role_arn = string (Required)
  template_body = string (Required)
  arn = string (Computed)
  default_version_id = number (Computed)
  description = string (Optional)
  enabled = bool (Optional)
  id = string (Optional, Computed)
  region = string (Optional, Computed)
  tags = ['map', 'string'] (Optional)
  tags_all = ['map', 'string'] (Optional, Computed)
  type = string (Optional, Computed)

  pre_provisioning_hook block "list" (Optional) {
    target_arn = string (Required)
    payload_version = string (Optional)
  }
}
