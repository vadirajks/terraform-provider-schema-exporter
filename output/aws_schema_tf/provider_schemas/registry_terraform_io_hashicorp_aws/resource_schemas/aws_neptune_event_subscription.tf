resource "aws_neptune_event_subscription" "name" {
  sns_topic_arn = string (Required)
  arn = string (Computed)
  customer_aws_id = string (Computed)
  enabled = bool (Optional)
  event_categories = ['set', 'string'] (Optional)
  id = string (Optional, Computed)
  name = string (Optional, Computed)
  name_prefix = string (Optional, Computed)
  region = string (Optional, Computed)
  source_ids = ['set', 'string'] (Optional)
  source_type = string (Optional)
  tags = ['map', 'string'] (Optional)
  tags_all = ['map', 'string'] (Optional, Computed)

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    update = string (Optional)
  }
}
