data "aws_oam_sinks" "name" {
  arns = ['set', 'string'] (Computed)
  id = string (Optional, Computed)
  region = string (Optional, Computed)
}
