resource "aws_guardduty_member_detector_feature" "name" {
  account_id = string (Required)
  detector_id = string (Required)
  name = string (Required)
  status = string (Required)
  region = string (Optional, Computed)

  additional_configuration block "list" (Optional) {
    name = string (Required)
    status = string (Required)
  }
}
