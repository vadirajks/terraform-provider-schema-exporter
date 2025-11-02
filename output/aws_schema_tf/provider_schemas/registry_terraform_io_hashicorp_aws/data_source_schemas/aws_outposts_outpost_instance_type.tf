data "aws_outposts_outpost_instance_type" "name" {
  arn = string (Required)
  id = string (Optional, Computed)
  instance_type = string (Optional, Computed)
  preferred_instance_types = ['list', 'string'] (Optional)
  region = string (Optional, Computed)
}
