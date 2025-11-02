resource "aws_guardduty_detector_feature" "name" {
  detector_id = string (Required)
  name = string (Required)
  status = string (Required)
  id = string (Optional, Computed)
  region = string (Optional, Computed)

  additional_configuration block "set" (Optional) {
    name = string (Required)
    status = string (Required)
  }
}
