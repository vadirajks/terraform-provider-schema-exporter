resource "aws_chimesdkvoice_sip_rule" "name" {
  name = string (Required)
  trigger_type = string (Required)
  trigger_value = string (Required)
  disabled = bool (Optional)
  id = string (Optional, Computed)
  region = string (Optional, Computed)

  target_applications block "set" (Required) {
    aws_region = string (Required)
    priority = number (Required)
    sip_media_application_id = string (Required)
  }
}
