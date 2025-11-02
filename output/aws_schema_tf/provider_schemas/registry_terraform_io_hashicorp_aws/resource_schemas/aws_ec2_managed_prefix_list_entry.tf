resource "aws_ec2_managed_prefix_list_entry" "name" {
  cidr = string (Required)
  prefix_list_id = string (Required)
  description = string (Optional)
  id = string (Optional, Computed)
  region = string (Optional, Computed)
}
