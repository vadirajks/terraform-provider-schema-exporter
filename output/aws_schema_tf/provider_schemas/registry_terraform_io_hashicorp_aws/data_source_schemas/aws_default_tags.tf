data "aws_default_tags" "name" {
  id = string (Optional, Computed)
  tags = ['map', 'string'] (Computed)
}
