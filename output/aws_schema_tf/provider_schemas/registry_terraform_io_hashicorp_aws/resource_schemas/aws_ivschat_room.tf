resource "aws_ivschat_room" "name" {
  arn = string (Computed)
  id = string (Optional, Computed)
  logging_configuration_identifiers = ['list', 'string'] (Optional)
  maximum_message_length = number (Optional, Computed)
  maximum_message_rate_per_second = number (Optional, Computed)
  name = string (Optional)
  region = string (Optional, Computed)
  tags = ['map', 'string'] (Optional)
  tags_all = ['map', 'string'] (Optional, Computed)

  message_review_handler block "list" (Optional) {
    fallback_result = string (Optional, Computed)
    uri = string (Optional)
  }

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    update = string (Optional)
  }
}
