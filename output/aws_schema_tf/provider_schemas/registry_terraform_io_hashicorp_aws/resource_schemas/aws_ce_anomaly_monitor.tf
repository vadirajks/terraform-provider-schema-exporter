resource "aws_ce_anomaly_monitor" "name" {
  monitor_type = string (Required)
  name = string (Required)
  arn = string (Computed)
  id = string (Optional, Computed)
  monitor_dimension = string (Optional)
  monitor_specification = string (Optional)
  tags = ['map', 'string'] (Optional)
  tags_all = ['map', 'string'] (Optional, Computed)
}
