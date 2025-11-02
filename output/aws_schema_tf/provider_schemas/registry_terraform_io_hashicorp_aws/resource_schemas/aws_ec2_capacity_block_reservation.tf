resource "aws_ec2_capacity_block_reservation" "name" {
  capacity_block_offering_id = string (Required)
  instance_platform = string (Required)
  arn = string (Computed)
  availability_zone = string (Computed)
  created_date = string (Computed)
  ebs_optimized = bool (Computed)
  end_date = string (Computed)
  end_date_type = string (Computed)
  id = string (Computed)
  instance_count = number (Computed)
  instance_type = string (Computed)
  outpost_arn = string (Computed)
  placement_group_arn = string (Computed)
  region = string (Optional, Computed)
  reservation_type = string (Computed)
  start_date = string (Computed)
  tags = ['map', 'string'] (Optional)
  tags_all = ['map', 'string'] (Computed)
  tenancy = string (Computed)

  timeouts block "single" (Optional) {
    create = string (Optional)
  }
}
