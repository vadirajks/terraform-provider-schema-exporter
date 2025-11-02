resource "aws_networkfirewall_logging_configuration" "name" {
  firewall_arn = string (Required)
  enable_monitoring_dashboard = bool (Optional, Computed)
  id = string (Optional, Computed)
  region = string (Optional, Computed)

  logging_configuration block "list" (Required) {

    log_destination_config block "set" (Required) {
      log_destination = ['map', 'string'] (Required)
      log_destination_type = string (Required)
      log_type = string (Required)
    }
  }
}
