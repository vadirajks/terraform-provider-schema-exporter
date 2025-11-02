resource "aws_inspector_assessment_template" "name" {
  duration = number (Required)
  name = string (Required)
  rules_package_arns = ['set', 'string'] (Required)
  target_arn = string (Required)
  arn = string (Computed)
  id = string (Optional, Computed)
  region = string (Optional, Computed)
  tags = ['map', 'string'] (Optional)
  tags_all = ['map', 'string'] (Optional, Computed)

  event_subscription block "set" (Optional) {
    event = string (Required)
    topic_arn = string (Required)
  }
}
