resource "aws_securityhub_finding_aggregator" "name" {
  linking_mode = string (Required)
  id = string (Optional, Computed)
  region = string (Optional, Computed)
  specified_regions = ['set', 'string'] (Optional)
}
