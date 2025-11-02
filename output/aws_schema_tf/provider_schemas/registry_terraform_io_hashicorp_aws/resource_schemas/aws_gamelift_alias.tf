resource "aws_gamelift_alias" "name" {
  name = string (Required)
  arn = string (Computed)
  description = string (Optional)
  id = string (Optional, Computed)
  region = string (Optional, Computed)
  tags = ['map', 'string'] (Optional)
  tags_all = ['map', 'string'] (Optional, Computed)

  routing_strategy block "list" (Required) {
    type = string (Required)
    fleet_id = string (Optional)
    message = string (Optional)
  }
}
