resource "aws_sesv2_contact_list" "name" {
  contact_list_name = string (Required)
  arn = string (Computed)
  created_timestamp = string (Computed)
  description = string (Optional)
  id = string (Optional, Computed)
  last_updated_timestamp = string (Computed)
  region = string (Optional, Computed)
  tags = ['map', 'string'] (Optional)
  tags_all = ['map', 'string'] (Optional, Computed)

  topic block "set" (Optional) {
    default_subscription_status = string (Required)
    display_name = string (Required)
    topic_name = string (Required)
    description = string (Optional)
  }
}
