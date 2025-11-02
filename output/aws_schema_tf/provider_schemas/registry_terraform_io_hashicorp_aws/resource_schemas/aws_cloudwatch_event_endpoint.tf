resource "aws_cloudwatch_event_endpoint" "name" {
  name = string (Required)
  arn = string (Computed)
  description = string (Optional)
  endpoint_url = string (Computed)
  id = string (Optional, Computed)
  region = string (Optional, Computed)
  role_arn = string (Optional)

  event_bus block "list" (Required) {
    event_bus_arn = string (Required)
  }

  replication_config block "list" (Optional) {
    state = string (Optional)
  }

  routing_config block "list" (Required) {

    failover_config block "list" (Required) {

      primary block "list" (Required) {
        health_check = string (Optional)
      }

      secondary block "list" (Required) {
        route = string (Optional)
      }
    }
  }
}
