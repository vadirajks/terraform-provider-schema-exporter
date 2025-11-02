data "aws_outposts_outpost_instance_types" "name" {
  arn = string (Required)
  id = string (Optional, Computed)
  instance_types = ['set', 'string'] (Computed)
  region = string (Optional, Computed)
}
