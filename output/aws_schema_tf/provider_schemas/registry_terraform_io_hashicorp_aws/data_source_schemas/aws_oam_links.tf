data "aws_oam_links" "name" {
  arns = ['set', 'string'] (Computed)
  id = string (Optional, Computed)
  region = string (Optional, Computed)
}
