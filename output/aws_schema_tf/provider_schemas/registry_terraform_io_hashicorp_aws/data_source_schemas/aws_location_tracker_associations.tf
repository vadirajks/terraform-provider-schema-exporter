data "aws_location_tracker_associations" "name" {
  tracker_name = string (Required)
  consumer_arns = ['set', 'string'] (Computed)
  id = string (Optional, Computed)
  region = string (Optional, Computed)
}
