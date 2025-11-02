resource "aws_cloudwatch_log_anomaly_detector" "name" {
  enabled = bool (Required)
  log_group_arn_list = ['list', 'string'] (Required)
  anomaly_visibility_time = number (Optional, Computed)
  arn = string (Computed)
  detector_name = string (Optional)
  evaluation_frequency = string (Optional)
  filter_pattern = string (Optional)
  kms_key_id = string (Optional)
  region = string (Optional, Computed)
  tags = ['map', 'string'] (Optional)
  tags_all = ['map', 'string'] (Computed)
}
