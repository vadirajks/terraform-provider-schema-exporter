resource "aws_pinpoint_sms_channel" "name" {
  application_id = string (Required)
  enabled = bool (Optional)
  id = string (Optional, Computed)
  promotional_messages_per_second = number (Computed)
  region = string (Optional, Computed)
  sender_id = string (Optional)
  short_code = string (Optional)
  transactional_messages_per_second = number (Computed)
}
