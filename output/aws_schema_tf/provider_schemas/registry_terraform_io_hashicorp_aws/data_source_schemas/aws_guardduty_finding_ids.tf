data "aws_guardduty_finding_ids" "name" {
  detector_id = string (Required)
  finding_ids = ['list', 'string'] (Computed)
  has_findings = bool (Computed)
  id = string (Computed)
  region = string (Optional, Computed)
}
