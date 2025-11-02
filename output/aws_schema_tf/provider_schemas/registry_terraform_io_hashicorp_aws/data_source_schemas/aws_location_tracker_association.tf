data "aws_location_tracker_association" "name" {
  consumer_arn = string (Required)
  tracker_name = string (Required)
  id = string (Optional, Computed)
  region = string (Optional, Computed)
}
