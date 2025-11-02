resource "aws_vpc_network_performance_metric_subscription" "name" {
  destination = string (Required)
  source = string (Required)
  id = string (Optional, Computed)
  metric = string (Optional)
  period = string (Computed)
  region = string (Optional, Computed)
  statistic = string (Optional)
}
