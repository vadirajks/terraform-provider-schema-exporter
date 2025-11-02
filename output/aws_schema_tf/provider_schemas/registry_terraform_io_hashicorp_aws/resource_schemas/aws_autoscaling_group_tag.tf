resource "aws_autoscaling_group_tag" "name" {
  autoscaling_group_name = string (Required)
  id = string (Optional, Computed)
  region = string (Optional, Computed)

  tag block "list" (Required) {
    key = string (Required)
    propagate_at_launch = bool (Required)
    value = string (Required)
  }
}
