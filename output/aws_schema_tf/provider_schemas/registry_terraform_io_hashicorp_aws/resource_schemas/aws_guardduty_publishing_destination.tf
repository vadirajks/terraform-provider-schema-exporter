resource "aws_guardduty_publishing_destination" "name" {
  destination_arn = string (Required)
  detector_id = string (Required)
  kms_key_arn = string (Required)
  destination_type = string (Optional)
  id = string (Optional, Computed)
  region = string (Optional, Computed)
}
