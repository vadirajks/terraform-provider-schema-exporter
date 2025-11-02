data "aws_lbs" "name" {
  arns = ['set', 'string'] (Computed)
  id = string (Optional, Computed)
  region = string (Optional, Computed)
  tags = ['map', 'string'] (Optional)
}
