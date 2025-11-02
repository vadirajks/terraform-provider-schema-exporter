data "aws_autoscaling_groups" "name" {
  arns = ['list', 'string'] (Computed)
  id = string (Optional, Computed)
  names = ['list', 'string'] (Optional, Computed)
  region = string (Optional, Computed)

  filter block "set" (Optional) {
    name = string (Required)
    values = ['list', 'string'] (Required)
  }
}
