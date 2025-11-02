data "aws_ec2_capacity_block_offering" "name" {
  capacity_duration_hours = number (Required)
  instance_count = number (Required)
  instance_type = string (Required)
  availability_zone = string (Computed)
  capacity_block_offering_id = string (Computed)
  currency_code = string (Computed)
  end_date_range = string (Optional, Computed)
  region = string (Optional, Computed)
  start_date_range = string (Optional, Computed)
  tenancy = string (Computed)
  upfront_fee = string (Computed)
}
