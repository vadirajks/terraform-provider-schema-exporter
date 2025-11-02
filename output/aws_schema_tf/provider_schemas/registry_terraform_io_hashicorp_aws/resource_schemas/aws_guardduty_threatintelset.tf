resource "aws_guardduty_threatintelset" "name" {
  activate = bool (Required)
  detector_id = string (Required)
  format = string (Required)
  location = string (Required)
  name = string (Required)
  arn = string (Computed)
  id = string (Optional, Computed)
  region = string (Optional, Computed)
  tags = ['map', 'string'] (Optional)
  tags_all = ['map', 'string'] (Optional, Computed)
}
