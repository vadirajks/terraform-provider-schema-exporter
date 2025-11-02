resource "aws_emr_instance_group" "name" {
  cluster_id = string (Required)
  instance_type = string (Required)
  autoscaling_policy = string (Optional)
  bid_price = string (Optional)
  configurations_json = string (Optional)
  ebs_optimized = bool (Optional)
  id = string (Optional, Computed)
  instance_count = number (Optional, Computed)
  name = string (Optional)
  region = string (Optional, Computed)
  running_instance_count = number (Computed)
  status = string (Computed)

  ebs_config block "set" (Optional) {
    size = number (Required)
    type = string (Required)
    iops = number (Optional)
    volumes_per_instance = number (Optional)
  }
}
