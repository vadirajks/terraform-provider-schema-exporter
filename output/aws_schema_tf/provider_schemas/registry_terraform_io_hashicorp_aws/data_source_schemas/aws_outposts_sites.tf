data "aws_outposts_sites" "name" {
  id = string (Optional, Computed)
  ids = ['set', 'string'] (Computed)
  region = string (Optional, Computed)
}
