resource "aws_pinpointsmsvoicev2_configuration_set" "name" {
  name = string (Required)
  arn = string (Computed)
  default_message_type = string (Optional)
  default_sender_id = string (Optional)
  id = string (Computed)
  region = string (Optional, Computed)
  tags = ['map', 'string'] (Optional)
  tags_all = ['map', 'string'] (Computed)
}
