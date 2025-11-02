resource "aws_athena_capacity_reservation" "name" {
  name = string (Required)
  target_dpus = number (Required)
  allocated_dpus = number (Computed)
  arn = string (Computed)
  region = string (Optional, Computed)
  status = string (Computed)
  tags = ['map', 'string'] (Optional)
  tags_all = ['map', 'string'] (Computed)

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    update = string (Optional)
  }
}
