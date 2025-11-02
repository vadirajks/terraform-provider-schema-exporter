data "aws_lb_trust_store" "name" {
  arn = string (Optional, Computed)
  id = string (Optional, Computed)
  name = string (Optional, Computed)
  region = string (Optional, Computed)
}
