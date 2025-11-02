resource "aws_wafregional_web_acl" "name" {
  metric_name = string (Required)
  name = string (Required)
  arn = string (Computed)
  id = string (Optional, Computed)
  region = string (Optional, Computed)
  tags = ['map', 'string'] (Optional)
  tags_all = ['map', 'string'] (Optional, Computed)

  default_action block "list" (Required) {
    type = string (Required)
  }

  logging_configuration block "list" (Optional) {
    log_destination = string (Required)

    redacted_fields block "list" (Optional) {

      field_to_match block "set" (Required) {
        type = string (Required)
        data = string (Optional)
      }
    }
  }

  rule block "set" (Optional) {
    priority = number (Required)
    rule_id = string (Required)
    type = string (Optional)

    action block "list" (Optional) {
      type = string (Required)
    }

    override_action block "list" (Optional) {
      type = string (Required)
    }
  }
}
