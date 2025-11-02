data "aws_servicequotas_service_quota" "name" {
  service_code = string (Required)
  adjustable = bool (Computed)
  arn = string (Computed)
  default_value = number (Computed)
  global_quota = bool (Computed)
  id = string (Optional, Computed)
  quota_code = string (Optional, Computed)
  quota_name = string (Optional, Computed)
  region = string (Optional, Computed)
  service_name = string (Computed)
  usage_metric = ['list', ['object', {'metric_dimensions': ['list', ['object', {'class': 'string', 'resource': 'string', 'service': 'string', 'type': 'string'}]], 'metric_name': 'string', 'metric_namespace': 'string', 'metric_statistic_recommendation': 'string'}]] (Computed)
  value = number (Computed)
}
