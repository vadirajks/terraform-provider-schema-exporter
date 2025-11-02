data "aws_acm_certificate" "name" {
  arn = string (Computed)
  certificate = string (Computed)
  certificate_chain = string (Computed)
  domain = string (Optional, Computed)
  id = string (Optional, Computed)
  key_types = ['set', 'string'] (Optional)
  most_recent = bool (Optional)
  region = string (Optional, Computed)
  status = string (Computed)
  statuses = ['list', 'string'] (Optional)
  tags = ['map', 'string'] (Optional, Computed)
  types = ['list', 'string'] (Optional)
}
