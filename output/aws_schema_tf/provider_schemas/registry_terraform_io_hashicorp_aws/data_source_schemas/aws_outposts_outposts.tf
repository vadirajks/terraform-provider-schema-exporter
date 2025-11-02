data "aws_outposts_outposts" "name" {
  arns = ['set', 'string'] (Computed)
  availability_zone = string (Optional, Computed)
  availability_zone_id = string (Optional, Computed)
  id = string (Optional, Computed)
  ids = ['set', 'string'] (Computed)
  owner_id = string (Optional, Computed)
  region = string (Optional, Computed)
  site_id = string (Optional, Computed)
}
