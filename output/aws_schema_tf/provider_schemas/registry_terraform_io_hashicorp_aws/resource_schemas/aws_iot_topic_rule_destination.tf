resource "aws_iot_topic_rule_destination" "name" {
  arn = string (Computed)
  enabled = bool (Optional)
  id = string (Optional, Computed)
  region = string (Optional, Computed)

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    update = string (Optional)
  }

  vpc_configuration block "list" (Required) {
    role_arn = string (Required)
    subnet_ids = ['set', 'string'] (Required)
    vpc_id = string (Required)
    security_groups = ['set', 'string'] (Optional)
  }
}
