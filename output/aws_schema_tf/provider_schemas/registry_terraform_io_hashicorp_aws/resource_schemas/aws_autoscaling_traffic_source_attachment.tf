resource "aws_autoscaling_traffic_source_attachment" "name" {
  autoscaling_group_name = string (Required)
  id = string (Optional, Computed)
  region = string (Optional, Computed)

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
  }

  traffic_source block "list" (Optional) {
    identifier = string (Required)
    type = string (Required)
  }
}
