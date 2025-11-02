resource "aws_codedeploy_deployment_config" "name" {
  deployment_config_name = string (Required)
  arn = string (Computed)
  compute_platform = string (Optional)
  deployment_config_id = string (Computed)
  id = string (Optional, Computed)
  region = string (Optional, Computed)

  minimum_healthy_hosts block "list" (Optional) {
    type = string (Optional)
    value = number (Optional)
  }

  traffic_routing_config block "list" (Optional) {
    type = string (Optional)

    time_based_canary block "list" (Optional) {
      interval = number (Optional)
      percentage = number (Optional)
    }

    time_based_linear block "list" (Optional) {
      interval = number (Optional)
      percentage = number (Optional)
    }
  }

  zonal_config block "list" (Optional) {
    first_zone_monitor_duration_in_seconds = number (Optional)
    monitor_duration_in_seconds = number (Optional)

    minimum_healthy_hosts_per_zone block "list" (Optional) {
      type = string (Optional)
      value = number (Optional)
    }
  }
}
