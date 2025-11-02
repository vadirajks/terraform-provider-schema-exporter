resource "aws_servicequotas_template_association" "name" {
  id = string (Computed)
  region = string (Optional, Computed)
  skip_destroy = bool (Optional)
  status = string (Computed)
}
