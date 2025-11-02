resource "aws_codestarnotifications_notification_rule" "name" {
  detail_type = string (Required)
  event_type_ids = ['set', 'string'] (Required)
  name = string (Required)
  resource = string (Required)
  arn = string (Computed)
  id = string (Optional, Computed)
  region = string (Optional, Computed)
  status = string (Optional)
  tags = ['map', 'string'] (Optional)
  tags_all = ['map', 'string'] (Optional, Computed)

  target block "set" (Optional) {
    address = string (Required)
    status = string (Computed)
    type = string (Optional)
  }
}
