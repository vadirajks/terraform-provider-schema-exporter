resource "aws_dms_event_subscription" "name" {
  event_categories = ['set', 'string'] (Required)
  name = string (Required)
  sns_topic_arn = string (Required)
  source_type = string (Required)
  arn = string (Computed)
  enabled = bool (Optional)
  id = string (Optional, Computed)
  region = string (Optional, Computed)
  source_ids = ['set', 'string'] (Optional)
  tags = ['map', 'string'] (Optional)
  tags_all = ['map', 'string'] (Optional, Computed)

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    update = string (Optional)
  }
}
