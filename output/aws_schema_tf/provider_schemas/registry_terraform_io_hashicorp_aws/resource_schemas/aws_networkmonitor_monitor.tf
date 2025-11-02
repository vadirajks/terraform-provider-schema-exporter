resource "aws_networkmonitor_monitor" "name" {
  monitor_name = string (Required)
  aggregation_period = number (Optional, Computed)
  arn = string (Computed)
  id = string (Computed)
  region = string (Optional, Computed)
  tags = ['map', 'string'] (Optional)
  tags_all = ['map', 'string'] (Computed)
}
