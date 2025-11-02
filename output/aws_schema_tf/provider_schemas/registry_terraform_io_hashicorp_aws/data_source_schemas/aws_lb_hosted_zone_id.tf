data "aws_lb_hosted_zone_id" "name" {
  id = string (Optional, Computed)
  load_balancer_type = string (Optional)
  region = string (Optional, Computed)
}
