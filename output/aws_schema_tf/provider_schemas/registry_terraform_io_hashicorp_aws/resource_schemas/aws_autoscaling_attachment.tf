resource "aws_autoscaling_attachment" "name" {
  autoscaling_group_name = string (Required)
  elb = string (Optional)
  id = string (Optional, Computed)
  lb_target_group_arn = string (Optional)
  region = string (Optional, Computed)
}
