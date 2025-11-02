resource "aws_internetmonitor_monitor" "name" {
  monitor_name = string (Required)
  arn = string (Computed)
  id = string (Optional, Computed)
  max_city_networks_to_monitor = number (Optional)
  region = string (Optional, Computed)
  resources = ['set', 'string'] (Optional)
  status = string (Optional)
  tags = ['map', 'string'] (Optional)
  tags_all = ['map', 'string'] (Optional, Computed)
  traffic_percentage_to_monitor = number (Optional)

  health_events_config block "list" (Optional) {
    availability_score_threshold = number (Optional)
    performance_score_threshold = number (Optional)
  }

  internet_measurements_log_delivery block "list" (Optional) {

    s3_config block "list" (Optional) {
      bucket_name = string (Required)
      bucket_prefix = string (Optional)
      log_delivery_status = string (Optional)
    }
  }
}
