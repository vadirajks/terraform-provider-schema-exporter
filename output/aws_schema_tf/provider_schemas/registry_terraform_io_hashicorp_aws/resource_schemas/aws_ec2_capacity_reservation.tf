resource "aws_ec2_capacity_reservation" "name" {
  availability_zone = string (Required)
  instance_count = number (Required)
  instance_platform = string (Required)
  instance_type = string (Required)
  arn = string (Computed)
  ebs_optimized = bool (Optional)
  end_date = string (Optional)
  end_date_type = string (Optional)
  ephemeral_storage = bool (Optional)
  id = string (Optional, Computed)
  instance_match_criteria = string (Optional)
  outpost_arn = string (Optional)
  owner_id = string (Computed)
  placement_group_arn = string (Optional)
  region = string (Optional, Computed)
  tags = ['map', 'string'] (Optional)
  tags_all = ['map', 'string'] (Optional, Computed)
  tenancy = string (Optional)

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    update = string (Optional)
  }
}
