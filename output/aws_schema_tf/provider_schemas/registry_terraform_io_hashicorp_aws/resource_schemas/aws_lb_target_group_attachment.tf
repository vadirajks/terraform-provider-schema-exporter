resource "aws_lb_target_group_attachment" "name" {
  target_group_arn = string (Required)
  target_id = string (Required)
  availability_zone = string (Optional)
  id = string (Optional, Computed)
  port = number (Optional)
  region = string (Optional, Computed)
}
